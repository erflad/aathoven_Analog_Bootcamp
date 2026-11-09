#!/usr/bin/env bash
set -euo pipefail

project=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/../.." && pwd)
export PDK_ROOT=${PDK_ROOT:-"$HOME/.volare"}
export PDK=${PDK:-sky130A}
pdk="$PDK_ROOT/$PDK"
magicrc="$pdk/libs.tech/magic/$PDK.magicrc"
setup="$pdk/libs.tech/netgen/${PDK}_setup.tcl"
for tool in xschem ngspice magic netgen; do
    command -v "$tool" >/dev/null || { echo "Missing tool: $tool" >&2; exit 1; }
done
test -r "$magicrc" && test -r "$setup"

mkdir -p "$project/output/validation"
reports=$(mktemp -d "$project/output/validation/run.XXXXXX")
echo "Reports: $reports"
cd "$reports"

benches=(tb_dc_analysis tb_ac_analysis tb_cmrr tb_impedance)
for bench in "${benches[@]}"; do
    xschem -n -x -q --rcfile "$project/build/schematic/xschemrc" \
        -o "$reports" "$project/schematics/$bench.sch" > "$bench.xschem.log" 2>&1
    ngspice -b "$bench.spice" > "$bench.log" 2>&1
    grep -Eq 'No\. of Data Rows[[:space:]]*:[[:space:]]*[1-9][0-9]*' "$bench.log"
done
sed -n '/^\.subckt bootcamp_opamp /,/^\.ends/p' tb_ac_analysis.spice > schematic.spice
test -s schematic.spice

# Check both the editable Magic source and the exported GDS in separate sessions.
for view in mag gds; do
    mkdir "$view"
    cp "$project/layout/bootcamp_opamp.$view" "$view/"
    (
        cd "$view"
        {
            if [[ "$view" == gds ]]; then
                echo 'gds read bootcamp_opamp.gds'
            fi
            cat <<'MAGIC'
load bootcamp_opamp
drc check
drc catchup
drc count total
puts [drc listall why]
extract all
ext2spice lvs
ext2spice
ext2spice cthresh 0
ext2spice -o postlayout.spice
quit -noprompt
MAGIC
        } | magic -dnull -noconsole -rcfile "$magicrc" > magic.log 2>&1
        grep -Fxq 'Total DRC errors found: 0' magic.log
        test -s bootcamp_opamp.spice
        netgen -batch lvs 'bootcamp_opamp.spice bootcamp_opamp' \
            '../schematic.spice bootcamp_opamp' "$setup" lvs.log > netgen.log 2>&1
        grep -Fxq 'Final result: Circuits match uniquely.' lvs.log
    )
    echo "$view: zero Magic DRC errors and unique Netgen LVS match"
done

# Verify pin order before substituting the GDS extraction into the same benches.
reference_ports=$(grep '^\.subckt bootcamp_opamp ' schematic.spice)
extracted_ports=$(grep '^\.subckt bootcamp_opamp ' gds/postlayout.spice)
[[ "$reference_ports" == "$extracted_ports" ]]
mkdir postlayout
for bench in "${benches[@]}"; do
    awk '
        /^\.subckt bootcamp_opamp / {
            while ((getline line < "gds/postlayout.spice") > 0) print line
            replacing = 1
        }
        replacing && /^\.ends/ { replacing = 0; next }
        !replacing { print }
    ' "$bench.spice" > "postlayout/$bench.spice"
    ngspice -b "postlayout/$bench.spice" > "postlayout/$bench.log" 2>&1
    grep -Eq 'No\. of Data Rows[[:space:]]*:[[:space:]]*[1-9][0-9]*' "postlayout/$bench.log"
done

for result in . postlayout; do
    echo "$result (TT, 27 C, 1.8 V, 0.9 V input common mode, 0.7 V external bias)"
    awk '$1 == "vout" {print "  DC output = " $2 " V"; exit}' "$result/tb_dc_analysis.log"
    ad=$(awk '$1 == 0 && $2 == 1 {print $3; exit}' "$result/tb_ac_analysis.log")
    acm=$(awk '$1 == 0 && $2 == 1 {print $3; exit}' "$result/tb_cmrr.log")
    awk -v ad="$ad" -v acm="$acm" 'BEGIN {
        if (ad <= 0 || acm <= 0) exit 1
        printf "  1 Hz gain = %.4g V/V, common-mode gain = %.4g V/V, CMRR = %.2f dB\n", ad, acm, 20*log(ad/acm)/log(10)
    }'
    awk '$1 == "output_impedance_at_v(vout)" {print "  DC output resistance = " $3 " ohm"}' "$result/tb_impedance.log"
done
