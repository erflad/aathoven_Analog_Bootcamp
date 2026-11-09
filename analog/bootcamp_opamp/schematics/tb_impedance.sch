v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 210 20 240 20 {lab=#net1}
N 240 20 240 40 {lab=#net1}
N 210 -20 240 -20 {lab=#net2}
N 240 -40 240 -20 {lab=#net2}
N 300 -40 300 40 {lab=GND}
N 300 0 340 0 {lab=GND}
N 60 -100 340 -100 {lab=GND}
N 340 -100 340 0 {lab=GND}
N -30 -130 -30 -60 {lab=#net3}
N -30 -100 0 -100 {lab=#net3}
N -90 -60 -90 -20 {lab=VINN}
N -110 -130 -90 -130 {lab=#net4}
N -110 0 -90 0 {lab=VINP}
N -110 -70 -110 0 {lab=VINP}
N 210 0 220 0 {lab=VOUT}
N -90 20 -90 40 {lab=VBN}
C {bootcamp_opamp.sym} 60 0 0 0 {name=x1}
C {devices/vsource.sym} 270 -40 3 0 {name=VDD value=1.8 savecurrent=false}
C {devices/vsource.sym} 270 40 3 0 {name=VSS value=0 savecurrent=false}
C {devices/gnd.sym} 340 0 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 30 -100 3 0 {name=VCM value=0.9 savecurrent=false}
C {devices/res.sym} -60 -130 3 0 {name=RINP
value=1Meg
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -60 -60 3 0 {name=RINN
value=1Meg
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} -110 -100 2 0 {name=VDIFF value=0 savecurrent=false}
C {sky130_fd_pr/corner.sym} -220 90 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/vsource.sym} -90 70 0 0 {name=VBN value=0.7 savecurrent=false}
C {devices/opin.sym} 220 0 0 0 {name=p1 lab=VOUT}
C {devices/lab_pin.sym} -90 30 0 0 {name=p2 sig_type=std_logic lab=VBN}
C {devices/lab_pin.sym} -110 -60 0 0 {name=p3 sig_type=std_logic lab=VINP}
C {devices/lab_pin.sym} -90 -40 0 1 {name=p4 sig_type=std_logic lab=VINN}
C {devices/gnd.sym} -90 100 0 0 {name=l2 lab=GND}
C {devices/code_shown.sym} -90 170 0 0 {name=s1 only_toplevel=false value=".tf v(vout) vdiff"}
