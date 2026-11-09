v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 170 20 200 20 {lab=#net1}
N 200 20 200 40 {lab=#net1}
N 170 -20 200 -20 {lab=#net2}
N 200 -40 200 -20 {lab=#net2}
N 260 -0 260 40 {lab=GND}
N 260 -0 300 0 {lab=GND}
N 20 -100 300 -100 {lab=GND}
N 300 -100 300 0 {lab=GND}
N -70 -100 -70 -60 {lab=#net3}
N -70 -100 -40 -100 {lab=#net3}
N -130 -60 -130 -20 {lab=VINN}
N -150 -130 -130 -130 {lab=#net4}
N -150 0 -130 -0 {lab=VINP}
N -150 -70 -150 -0 {lab=VINP}
N 170 0 180 0 {lab=VOUT}
N -130 20 -130 40 {lab=VBN}
N 260 -40 260 -0 {lab=GND}
N -70 -130 -70 -100 {lab=#net3}
C {bootcamp_opamp.sym} 20 0 0 0 {name=x1}
C {devices/vsource.sym} 230 -40 3 0 {name=VDD value=1.8 savecurrent=false}
C {devices/vsource.sym} 230 40 3 0 {name=VSS value=0 savecurrent=false}
C {devices/gnd.sym} 300 0 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -10 -100 3 0 {name=VCM value=0.9 savecurrent=false}
C {devices/res.sym} -100 -130 3 0 {name=RINP
value=1Meg
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -100 -60 3 0 {name=RINN
value=1Meg
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} -150 -100 2 0 {name=VDIFF value="dc 0 ac 1" savecurrent=false}
C {sky130_fd_pr/corner.sym} -260 90 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/code_shown.sym} -110 150 0 0 {name=s1 only_toplevel=false value=".ac dec 10 1 100Meg
.print ac vm(vout) vp(vout)"}
C {devices/vsource.sym} -130 70 0 0 {name=VBN value=0.7 savecurrent=false}
C {devices/opin.sym} 180 0 0 0 {name=p1 lab=VOUT}
C {devices/lab_pin.sym} -130 30 0 0 {name=p2 sig_type=std_logic lab=VBN}
C {devices/lab_pin.sym} -150 -60 0 0 {name=p3 sig_type=std_logic lab=VINP}
C {devices/lab_pin.sym} -130 -40 0 1 {name=p4 sig_type=std_logic lab=VINN}
C {devices/gnd.sym} -130 100 0 0 {name=l2 lab=GND}
