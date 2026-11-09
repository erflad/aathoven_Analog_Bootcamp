v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 30 140 30 {lab=#net1}
N 0 -60 0 -30 {lab=#net2}
N 40 -90 100 -90 {lab=#net2}
N 140 -30 220 -30 {lab=VI}
N 70 -90 70 -60 {lab=#net2}
N 0 -60 70 -60 {lab=#net2}
N 70 30 70 60 {lab=#net1}
N 140 -60 140 -30 {lab=VI}
N 340 -60 340 60 {lab=VOUT}
N 220 -90 220 -30 {lab=VI}
N 220 -90 300 -90 {lab=VI}
N -0 -150 0 -120 {lab=VDD}
N -0 -150 340 -150 {lab=VDD}
N 340 -150 340 -120 {lab=VDD}
N 140 -150 140 -120 {lab=VDD}
N -10 -120 -0 -120 {lab=VDD}
N -10 -120 -10 -90 {lab=VDD}
N -10 -90 -0 -90 {lab=VDD}
N 140 -90 150 -90 {lab=VDD}
N 150 -120 150 -90 {lab=VDD}
N 140 -120 150 -120 {lab=VDD}
N 340 -90 350 -90 {lab=VDD}
N 350 -120 350 -90 {lab=VDD}
N 340 -120 350 -120 {lab=VDD}
N 70 120 70 140 {lab=VSS}
N 70 140 340 140 {lab=VSS}
N 340 120 340 140 {lab=VSS}
N 60 90 70 90 {lab=VSS}
N 60 90 60 120 {lab=VSS}
N 60 120 70 120 {lab=VSS}
N 340 90 350 90 {lab=VSS}
N 350 90 350 120 {lab=VSS}
N 340 120 350 120 {lab=VSS}
N 60 -0 60 90 {lab=VSS}
N 0 -0 60 0 {lab=VSS}
N 60 0 140 0 {lab=VSS}
N 110 90 300 90 {lab=VBN}
N 200 70 200 90 {lab=VBN}
N 250 -10 250 140 {lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} -20 0 0 0 {name=M1
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'"
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'"
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 160 0 0 1 {name=M2
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'"
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'"
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 90 90 0 1 {name=M3
L=0.15
W=1
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'"
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'"
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 320 90 0 0 {name=M7
L=0.15
W=1
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'"
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'"
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 20 -90 0 1 {name=M4
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'"
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'"
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 120 -90 0 0 {name=M5
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'"
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'"
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 320 -90 0 0 {name=M6
L=0.15
W=1
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'"
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'"
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 220 -90 0 0 {name=p17 sig_type=std_logic lab=VI}
C {devices/ipin.sym} -40 0 0 0 {name=p3 lab=VINN}
C {devices/iopin.sym} 0 -150 0 1 {name=p4 lab=VDD}
C {devices/iopin.sym} 70 140 0 1 {name=p5 lab=VSS}
C {devices/ipin.sym} 180 0 0 1 {name=p1 lab=VINP}
C {devices/opin.sym} 340 0 0 0 {name=p2 lab=VOUT}
C {devices/ipin.sym} 200 70 0 0 {name=p6 lab=VBN}
C {sky130_fd_pr/res_high_po.sym} 250 -30 3 0 {name=R1
W=0.69
L=1
model=res_high_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/cap_mim_m3_1.sym} 310 -30 1 0 {name=C1 model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
