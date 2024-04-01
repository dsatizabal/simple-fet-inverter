v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -200 30 -200 50 {
lab=GND}
N -80 -20 -60 -20 {
lab=Vin}
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
C {devices/vsource.sym} -200 0 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -200 50 0 0 {name=l4 lab=GND}
C {inverter.sym} 90 0 0 0 {name=X1}
C {devices/gnd.sym} -300 50 0 0 {name=l1 lab=GND}
C {devices/ipin.sym} -80 -20 0 0 {name=p5 lab=Vin}
C {devices/opin.sym} 300 0 0 0 {name=p6 lab=Vout}
C {devices/code.sym} -150 -240 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
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
Vin IN 0 pulse 0 1.8 5n 1n 1n 50n 100n
.control
tran 100p 200n
write inverter_tb.raw
.endc
"}
C {sky130_fd_pr/corner.sym} -280 -240 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/vsource.sym} -300 0 0 0 {name=V2 value=0 savecurrent=false}
C {devices/lab_pin.sym} -300 -60 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -200 -60 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 260 60 2 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 260 -60 2 0 {name=p4 sig_type=std_logic lab=VSS}
