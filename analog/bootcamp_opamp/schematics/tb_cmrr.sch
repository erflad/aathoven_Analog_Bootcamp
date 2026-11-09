v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 230 20 260 20 {lab=#net1}
N 260 20 260 40 {lab=#net1}
N 230 -20 260 -20 {lab=#net2}
N 260 -40 260 -20 {lab=#net2}
N 320 0 320 40 {lab=GND}
N 320 0 360 0 {lab=GND}
N 80 -100 360 -100 {lab=GND}
N 360 -100 360 0 {lab=GND}
N -10 -100 -10 -60 {lab=#net3}
N -10 -100 20 -100 {lab=#net3}
N -70 -60 -70 -20 {lab=VINN}
N -90 -130 -70 -130 {lab=#net4}
N -90 0 -70 0 {lab=VINP}
N -90 -70 -90 0 {lab=VINP}
N 230 0 240 0 {lab=VOUT}
N -70 20 -70 40 {lab=VBN}
N 320 -40 320 0 {lab=GND}
N -10 -130 -10 -100 {lab=#net3}
C {bootcamp_opamp.sym} 80 0 0 0 {name=x1}
C {devices/vsource.sym} 290 -40 3 0 {name=VDD value=1.8 savecurrent=false}
C {devices/vsource.sym} 290 40 3 0 {name=VSS value=0 savecurrent=false}
C {devices/gnd.sym} 360 0 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 50 -100 3 0 {name=VCM value="dc 0.9 ac 1" savecurrent=false}
C {devices/res.sym} -40 -130 3 0 {name=RINP
value=1Meg
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -40 -60 3 0 {name=RINN
value=1Meg
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} -90 -100 2 0 {name=VDIFF value="dc 0" savecurrent=false}
C {sky130_fd_pr/corner.sym} -200 90 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/code_shown.sym} -50 150 0 0 {name=s1 only_toplevel=false value=".ac dec 10 1 100Meg
.print ac vm(vout) vp(vout)"}
C {devices/vsource.sym} -70 70 0 0 {name=VBN value=0.7 savecurrent=false}
C {devices/opin.sym} 240 0 0 0 {name=p1 lab=VOUT}
C {devices/lab_pin.sym} -70 30 0 0 {name=p2 sig_type=std_logic lab=VBN}
C {devices/lab_pin.sym} -90 -60 0 0 {name=p3 sig_type=std_logic lab=VINP}
C {devices/lab_pin.sym} -70 -40 0 1 {name=p4 sig_type=std_logic lab=VINN}
C {devices/gnd.sym} -70 100 0 0 {name=l2 lab=GND}
