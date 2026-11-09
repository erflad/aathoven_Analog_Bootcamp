v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -170 30 -30 30 {lab=#net1}
N -170 -60 -170 -30 {lab=#net2}
N -130 -90 -70 -90 {lab=#net2}
N -30 -30 50 -30 {lab=#net3}
N -100 -90 -100 -60 {lab=#net2}
N -170 -60 -100 -60 {lab=#net2}
N -100 30 -100 60 {lab=#net1}
N -30 -60 -30 -30 {lab=#net3}
N 170 -60 170 60 {lab=VOUT}
N 50 -90 50 -30 {lab=#net3}
N 50 -90 130 -90 {lab=#net3}
N -170 -150 -170 -120 {lab=VDD}
N -170 -150 170 -150 {lab=VDD}
N 170 -150 170 -120 {lab=VDD}
N -30 -150 -30 -120 {lab=VDD}
N -100 120 -100 140 {lab=VSS}
N -100 140 170 140 {lab=VSS}
N 170 120 170 140 {lab=VSS}
N -170 -120 -170 -90 {lab=VDD}
N -30 -120 -30 -90 {lab=VDD}
N -100 90 -100 120 {lab=VSS}
N 170 90 170 120 {lab=VSS}
N 170 -120 170 -90 {lab=VDD}
N -60 70 -60 90 {lab=BIAS}
N -60 70 -0 70 {lab=BIAS}
N -0 70 -0 90 {lab=BIAS}
N -0 90 130 90 {lab=BIAS}
N -170 -0 -160 0 {lab=VSS}
N -160 0 -160 140 {lab=VSS}
N -40 0 -30 0 {lab=VSS}
N -40 0 -40 140 {lab=VSS}
N -170 140 -100 140 {lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} -190 0 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} -10 0 0 1 {name=M2
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
C {sky130_fd_pr/nfet_01v8.sym} -80 90 0 1 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} 150 90 0 0 {name=M7
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
C {sky130_fd_pr/pfet_01v8.sym} -150 -90 0 1 {name=M4
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
C {sky130_fd_pr/pfet_01v8.sym} -50 -90 0 0 {name=M5
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
C {sky130_fd_pr/pfet_01v8.sym} 150 -90 0 0 {name=M6
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
C {devices/res.sym} 80 -30 3 1 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 140 -30 3 1 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/ipin.sym} -210 0 0 0 {name=p3 lab=VIN-}
C {devices/iopin.sym} -170 140 0 1 {name=p5 lab=VSS}
C {devices/ipin.sym} 10 0 0 1 {name=p1 lab=VIN+}
C {devices/opin.sym} 170 0 0 0 {name=p2 lab=VOUT}
C {devices/iopin.sym} -170 -150 0 1 {name=p4 lab=VDD}
C {devices/iopin.sym} 0 70 2 1 {name=p6 lab=BIAS}
