v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 340 -500 1140 -100 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.123132e-08
x2=5.3852448e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vout
vin"
color="12 4"
dataset=-1
unitx=1
logx=0
logy=0
}
N -200 30 -200 50 {
lab=GND}
N 240 0 300 0 {
lab=Vout}
N -300 30 -300 50 {
lab=GND}
N -300 -60 -300 -30 {
lab=VDD}
N -200 -60 -200 -30 {
lab=VSS}
N 240 20 260 20 {
lab=VDD}
N 260 20 260 60 {
lab=VDD}
N 240 -20 260 -20 {
lab=VSS}
N 260 -60 260 -20 {
lab=VSS}
N -120 100 -120 130 {
lab=GND}
N -120 -20 -120 40 {
lab=Vin}
N -120 -20 -60 -20 {
lab=Vin}
N -120 -50 -120 -20 {
lab=Vin}
C {devices/vsource.sym} -200 0 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -200 50 0 0 {name=l4 lab=GND}
C {inverter.sym} 90 0 0 0 {name=X1}
C {devices/gnd.sym} -300 50 0 0 {name=l1 lab=GND}
C {devices/opin.sym} 300 0 0 0 {name=p6 lab=Vout}
C {devices/launcher.sym} -160 -100 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/simulator_commands_shown.sym} 0 -220 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
tran 1n 500n
write inverter_tb.raw
.endc
"}
C {sky130_fd_pr/corner.sym} -280 -240 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/vsource.sym} -300 0 0 0 {name=V2 value=0 savecurrent=false}
C {devices/lab_pin.sym} -300 -60 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -200 -60 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 260 60 2 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 260 -60 2 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -120 70 0 0 {name=V3 value="pulse(0 1.8 0n 1n 1n 50n 100n)" savecurrent=false}
C {devices/gnd.sym} -120 130 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -120 -50 2 0 {name=p5 sig_type=std_logic lab=Vin}
