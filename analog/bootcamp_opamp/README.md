# UWASIC two-stage op-amp

The active SKY130A design is [bootcamp_opamp.sch](schematics/bootcamp_opamp.sch), the newer revision used by all four existing testbenches. It has an NMOS input pair, a PMOS mirror load, a common-source second stage and PDK poly-resistor/MIM-capacitor compensation. The bias input VBN is driven by the testbenches. The earlier single- and two-stage schematics remain in the project as reference revisions.

| Pin | Function |
| --- | --- |
| VINP | Non-inverting input |
| VINN | Inverting input |
| VOUT | Output |
| VDD | 1.8 V supply |
| VSS | Ground reference |
| VBN | External NMOS bias, set to 0.7 V in the testbenches |

[Magic source](layout/bootcamp_opamp.mag) is the editable layout. [GDS](layout/bootcamp_opamp.gds) is the exported standalone amplifier. The original Tiny Tapeout template and in-progress KLayout GDS are in [layout/draft](layout/draft). The in-progress file extracted as one NMOS with template ports and had 11 Magic DRC errors. The standalone macro uses newly drawn SKY130 devices and routing.

## Reproduce the checks

In the repository's analog environment, run from this directory:

```sh
bash build/validation/validate.sh
```

The script uses Xschem, ngspice, Magic and Netgen on PATH and defaults to the SKY130A PDK under `$HOME/.volare`. Set `PDK_ROOT` to your PDK parent directory if it differs. Each run saves the netlists and tool reports under `output/validation/`. The Magic source is the layout master. Use `make -C build/layout mag2gds` after editing it and rerun validation against the new export.

## Results

The saved differential AC and common-mode AC decks both returned an ngspice batch error because neither requested output. Each Xschem testbench now prints magnitude and phase. Each sweep completes with 81 points from 1 Hz to 100 MHz. The old cached decks also used ideal compensation parts. Validation regenerates the decks from the active schematic with PDK devices. The schematic resistor uses the generic SKY130 high-poly model with explicit 0.69 µm width and 1 µm length, matching the model and dimensions Magic extracts.

Measured at TT, 27 °C, VDD = 1.8 V, input common mode = 0.9 V and VBN = 0.7 V.

| Check | Schematic | GDS extraction with parasitic capacitances |
| --- | ---: | ---: |
| DC output | 0.704015 V | 0.704014 V |
| Differential gain at 1 Hz | 36.58 V/V | 36.58 V/V |
| Common-mode gain at 1 Hz | 0.4624 V/V | 0.4624 V/V |
| CMRR at 1 Hz | 37.96 dB | 37.96 dB |
| Small-signal DC output resistance | 90.952 kΩ | 90.950 kΩ |

CMRR is calculated from the ratio of the differential and common-mode gains at the same frequency. Both the editable Magic source and the re-imported GDS had zero errors in the installed Magic SKY130A DRC deck and a unique Netgen LVS match to the regenerated schematic. Tools used were Xschem 3.4.7, ngspice 45, Magic 8.3.573 and Netgen 1.5.292 with open_pdks revision `fa87f8f4bbcc7255b6f0c0fb506960f531ae2392`.

## Remaining verification

- Tiny Tapeout wrapper integration and its pin mapping, DRC and LVS remain open.
- The macro retains the external bias of the active schematic. A five-pin version would require an internal bias circuit and its own validation.
- The runs cover a nominal condition with the existing testbench loads. Loaded stability, transient behavior, process and temperature corners, and interconnect resistance extraction remain unverified. Bootcamp performance thresholds were unavailable for this run.
