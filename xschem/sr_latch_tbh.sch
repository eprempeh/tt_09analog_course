v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 610 -1040 670 -1040 {
lab=s}
N 610 -1020 670 -1020 {
lab=r}
N 970 -1040 1050 -1040 {
lab=vdd}
N 970 -1000 1010 -1000 {
lab=q}
N 970 -980 1050 -980 {
lab=vss}
N 640 -1280 640 -1250 {
lab=vdd}
N 770 -1280 770 -1250 {
lab=s}
N 1010 -1280 1010 -1250 {
lab=r}
N 1010 -1190 1010 -1160 {
lab=GND}
N 770 -1190 770 -1160 {
lab=GND}
N 640 -1190 640 -1160 {
lab=GND}
N 540 -1280 540 -1250 {
lab=vss}
N 540 -1190 540 -1160 {
lab=GND}
N 1300 -1020 1350 -1020 {
lab=q}
N 1350 -1020 1350 -980 {
lab=q}
N 1350 -920 1350 -870 {
lab=GND}
N 1350 -1020 1450 -1020 {
lab=q}
N 970 -1020 1160 -1020 {}
N 1160 -1020 1250 -1020 {}
C {sr_latch.sym} 820 -1010 0 0 {name=x1}
C {devices/ipin.sym} 470 -1090 0 0 {name=p1 lab=s}
C {devices/ipin.sym} 470 -1060 0 0 {name=p2 lab=r}
C {devices/iopin.sym} 420 -1030 0 0 {name=p3 lab=vdd}
C {devices/opin.sym} 420 -970 0 0 {name=p4 lab=q}
C {devices/opin.sym} 420 -1000 0 0 {name=p10 lab=qb}
C {devices/vsource.sym} 640 -1220 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vsource.sym} 770 -1220 0 0 {name=V2 value=0 savecurrent=false}
C {devices/lab_pin.sym} 640 -1280 0 0 {name=p11 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 770 -1280 0 0 {name=p13 sig_type=std_logic lab=s}
C {devices/lab_pin.sym} 1010 -1280 0 0 {name=p14 sig_type=std_logic lab=r}
C {devices/vsource.sym} 1010 -1220 0 0 {name=V3 value=0 savecurrent=false}
C {devices/gnd.sym} 640 -1160 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 770 -1160 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 1010 -1160 0 0 {name=l3 lab=GND}
C {devices/code.sym} 1530 -700 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {devices/launcher.sym} 1765 -515 0 0 {name=h3 
descr="Ctrl-click to load Xyce or ngspice data" 
tclcommand="
  if \{ [sim_is_xyce] \} \{ ;# using an if \{\} allows to differentiate file names
    xschem raw_read $netlist_dir/test_inv.raw tran
  \} else \{
    xschem raw_read $netlist_dir/test_inv.raw tran
  \}
"
}
C {devices/code.sym} 1520 -870 0 0 {name=SIMULATION
only_toplevel=true
value="
* .options filetype=ascii

.control

tran 0.1n 200n
plot v(s)
plot v(r) 
plot v(q) 
plot v(qb) 
write sr_latch.raw
.endc
.end
"}
C {devices/vsource.sym} 540 -1220 0 0 {name=V4 value=0 savecurrent=false}
C {devices/lab_pin.sym} 540 -1280 0 0 {name=p5 sig_type=std_logic lab=vss}
C {devices/gnd.sym} 540 -1160 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 610 -1040 0 0 {name=p6 sig_type=std_logic lab=s}
C {devices/lab_pin.sym} 610 -1020 0 0 {name=p7 sig_type=std_logic lab=r}
C {devices/lab_pin.sym} 1050 -1040 2 0 {name=p8 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1010 -1000 2 0 {name=p12 sig_type=std_logic lab=q}
C {devices/lab_pin.sym} 1050 -980 2 0 {name=p15 sig_type=std_logic lab=vss}
C {devices/res.sym} 1270 -1020 1 1 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 1350 -950 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1350 -870 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} 1160 -1020 1 0 {name=p9 sig_type=std_logic lab=qb}
C {devices/lab_pin.sym} 1450 -1020 2 0 {name=p16 sig_type=std_logic lab=pin_out}
