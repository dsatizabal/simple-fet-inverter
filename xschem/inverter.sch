v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 0 -20 0 20 {
lab=#net1}
N -60 -50 -40 -50 {
lab=#net2}
N -60 -50 -60 50 {
lab=#net2}
N -60 50 -40 50 {
lab=#net2}
N 0 -110 -0 -80 {
lab=VDD}
N 0 80 -0 110 {
lab=VSS}
N -0 -50 80 -50 {
lab=VDD}
N 80 -100 80 -50 {
lab=VDD}
N -0 -100 80 -100 {
lab=VDD}
N 0 50 80 50 {
lab=VSS}
N 80 50 80 100 {
lab=VSS}
N -0 100 80 100 {
lab=VSS}
N -80 -0 -60 -0 {}
N -0 -0 30 -0 {}
C {sky130_fd_pr/nfet_01v8.sym} -20 50 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} -20 -50 0 0 {name=M2
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
C {devices/ipin.sym} -80 0 0 0 {name=p1 lab=IN}
C {devices/opin.sym} 30 0 0 0 {name=p2 lab=OUT}
C {devices/iopin.sym} 0 -140 0 0 {name=p3 lab=VDD}
C {devices/iopin.sym} 0 150 0 0 {name=p4 lab=VSS}
C {devices/lab_pin.sym} 0 -110 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 0 110 0 0 {name=p6 sig_type=std_logic lab=VSS}
