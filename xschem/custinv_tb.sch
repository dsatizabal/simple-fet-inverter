v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 330 -470 1130 -70 {flags=graph
y1=7.3421528e-07
y2=2.0000006
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.612252e-08
x2=5.4419742e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vout
vin"
color="4 12"
dataset=-1
unitx=1
logx=0
logy=0
}
N 160 -0 210 0 {
lab=Vout}
N -60 0 -60 120 {
lab=Vin}
N 40 100 40 120 {
lab=#net1}
N -170 -100 40 -100 {
lab=#net2}
N -170 -100 -170 120 {
lab=#net2}
N -60 210 -60 230 {
lab=GND}
N -170 180 -170 210 {
lab=GND}
N -170 210 -60 210 {
lab=GND}
N -60 210 40 210 {
lab=GND}
N 40 180 40 210 {
lab=GND}
N -60 -0 -40 0 {
lab=Vin}
N -80 -0 -60 -0 {
lab=Vin}
N -60 180 -60 210 {
lab=GND}
C {devices/opin.sym} 210 0 0 0 {name=p1 lab=Vout}
C {devices/launcher.sym} -140 -330 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/simulator_commands_shown.sym} 80 -250 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
tran 1n 500n
write custinv_tb.raw
.endc
"}
C {sky130_fd_pr/corner.sym} -190 -270 0 0 {name=CORNER only_toplevel=true corner=tt}
C {custinv.sym} -40 0 0 0 {name=X1}
C {devices/vsource.sym} 40 150 0 0 {name=V1 value=0 savecurrent=false}
C {devices/vsource.sym} -60 150 0 0 {name=V2 value="pulse(0 1.8 0n 1n 1n 50n 100n)" savecurrent=false}
C {devices/vsource.sym} -170 150 0 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} -60 230 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -80 0 0 0 {name=p2 sig_type=std_logic lab=Vin}
