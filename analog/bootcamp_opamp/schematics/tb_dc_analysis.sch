v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 160 20 190 20 {lab=#net1}
N 190 20 190 40 {lab=#net1}
N 160 -20 190 -20 {lab=#net2}
N 190 -40 190 -20 {lab=#net2}
N 250 -40 250 40 {lab=GND}
N 250 0 290 0 {lab=GND}
N 10 -100 290 -100 {lab=GND}
N 290 -100 290 0 {lab=GND}
N -80 -130 -80 -60 {lab=#net3}
N -80 -100 -50 -100 {lab=#net3}
N -140 -60 -140 -20 {lab=VINN}
N -160 -130 -140 -130 {lab=#net4}
N -160 0 -140 0 {lab=VINP}
N -160 -70 -160 0 {lab=VINP}
N 160 0 170 0 {lab=VOUT}
N -140 20 -140 40 {lab=VBN}
C {bootcamp_opamp.sym} 10 0 0 0 {name=x1}
C {devices/vsource.sym} 220 -40 3 0 {name=VDD value=1.8 savecurrent=false}
C {devices/vsource.sym} 220 40 3 0 {name=VSS value=0 savecurrent=false}
C {devices/gnd.sym} 290 0 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -20 -100 3 0 {name=VCM value=0.9 savecurrent=false}
C {devices/res.sym} -110 -130 3 0 {name=RINP
value=1Meg
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -110 -60 3 0 {name=RINN
value=1Meg
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} -160 -100 2 0 {name=VDIFF value=0 savecurrent=false}
C {sky130_fd_pr/corner.sym} -270 90 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/code_shown.sym} -120 150 0 0 {name=s1 only_toplevel=false value=".op"}
C {devices/vsource.sym} -140 70 0 0 {name=VBN value=0.7 savecurrent=false}
C {devices/opin.sym} 170 0 0 0 {name=p1 lab=VOUT}
C {devices/lab_pin.sym} -140 30 0 0 {name=p2 sig_type=std_logic lab=VBN}
C {devices/lab_pin.sym} -160 -60 0 0 {name=p3 sig_type=std_logic lab=VINP}
C {devices/lab_pin.sym} -140 -40 0 1 {name=p4 sig_type=std_logic lab=VINN}
C {devices/gnd.sym} -140 100 0 0 {name=l2 lab=GND}
