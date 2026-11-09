v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -140 50 0 50 {lab=VSS}
N -140 -40 -140 -10 {lab=#net1}
N -100 -70 -40 -70 {lab=#net1}
N -70 -70 -70 -40 {lab=#net1}
N -140 -40 -70 -40 {lab=#net1}
N 0 -40 0 -10 {lab=VOUT}
N -140 -130 -140 -100 {lab=VDD}
N 0 -130 0 -100 {lab=VDD}
N -140 -100 -140 -70 {lab=VDD}
N 0 -100 0 -70 {lab=VDD}
N -140 -130 -0 -130 {lab=VDD}
N 0 -10 130 -10 {lab=VOUT}
N -140 20 -140 50 {lab=VSS}
N -0 20 -0 50 {lab=VSS}
N -70 50 -70 80 {lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} -160 20 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 20 20 0 1 {name=M2
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
C {sky130_fd_pr/pfet_01v8.sym} -120 -70 0 1 {name=M4
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
C {sky130_fd_pr/pfet_01v8.sym} -20 -70 0 0 {name=M5
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
C {devices/ipin.sym} -180 20 0 0 {name=p3 lab=VIN-}
C {devices/iopin.sym} -70 80 0 1 {name=p5 lab=VSS}
C {devices/ipin.sym} 40 20 0 1 {name=p1 lab=VIN+}
C {devices/opin.sym} 130 -10 0 0 {name=p2 lab=VOUT}
C {devices/iopin.sym} -140 -130 0 1 {name=p4 lab=VDD}
