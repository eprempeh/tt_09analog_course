v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 2290 -2830 3090 -2430 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=r
color=5
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 2290 -3290 3090 -2890 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=s
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 3160 -3290 3960 -2890 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="qb
pin_out1"
color="10 6"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 3160 -2830 3960 -2430 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="q
pin_out2"
color="12 5"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 2290 -2370 3090 -1970 {flags=graph
y1=-4e-06
y2=0.00015
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=i(vmeas)
color=21
dataset=-1
unitx=1
logx=0
logy=0
}
N 1240 -2940 1300 -2940 {
lab=s}
N 1240 -2920 1300 -2920 {
lab=r}
N 1600 -2940 1680 -2940 {
lab=#net1}
N 1600 -2900 1640 -2900 {
lab=q}
N 1600 -2880 1680 -2880 {
lab=vss}
N 1510 -2570 1510 -2540 {
lab=vdd}
N 1640 -2570 1640 -2540 {
lab=s}
N 1880 -2570 1880 -2540 {
lab=r}
N 1880 -2480 1880 -2450 {
lab=GND}
N 1640 -2480 1640 -2450 {
lab=GND}
N 1510 -2480 1510 -2450 {
lab=GND}
N 1410 -2570 1410 -2540 {
lab=vss}
N 1410 -2480 1410 -2450 {
lab=GND}
N 1990 -2920 2040 -2920 {
lab=pin_out1}
N 2040 -2920 2040 -2880 {
lab=pin_out1}
N 2040 -2820 2040 -2770 {
lab=GND}
N 2040 -2920 2140 -2920 {
lab=pin_out1}
N 1600 -2920 1790 -2920 {
lab=qb}
N 1790 -2920 1880 -2920 {
lab=qb}
N 1680 -2980 1680 -2940 {
lab=#net1}
N 1680 -3060 1680 -3040 {
lab=vdd}
N 1780 -2810 1830 -2810 {
lab=pin_out2}
N 1830 -2810 1830 -2770 {
lab=pin_out2}
N 1830 -2710 1830 -2660 {
lab=GND}
N 1830 -2810 1930 -2810 {
lab=pin_out2}
N 1880 -2920 1930 -2920 {
lab=qb}
N 1640 -2900 1800 -2900 {
lab=q}
N 1800 -2900 1800 -2850 {
lab=q}
N 1670 -2850 1800 -2850 {
lab=q}
N 1670 -2850 1670 -2810 {
lab=q}
N 1670 -2810 1720 -2810 {
lab=q}
C {sr_latch.sym} 1450 -2910 0 0 {name=x1}
C {devices/ipin.sym} 1290 -2570 0 0 {name=p1 lab=s}
C {devices/ipin.sym} 1290 -2540 0 0 {name=p2 lab=r}
C {devices/iopin.sym} 1240 -2510 0 0 {name=p3 lab=vdd}
C {devices/opin.sym} 1240 -2450 0 0 {name=p4 lab=q}
C {devices/opin.sym} 1240 -2480 0 0 {name=p10 lab=qb}
C {devices/vsource.sym} 1510 -2510 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vsource.sym} 1640 -2510 0 0 {name=V2 value="PULSE(0 1.8 10n 1n 1n 40n 400n)" savecurrent=false}
C {devices/lab_pin.sym} 1510 -2570 0 0 {name=p11 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1640 -2570 0 0 {name=p13 sig_type=std_logic lab=s}
C {devices/lab_pin.sym} 1880 -2570 0 0 {name=p14 sig_type=std_logic lab=r}
C {devices/vsource.sym} 1880 -2510 0 0 {name=V3 value="PULSE(0 1.8 110n 1n 1n 40n 400n)" savecurrent=false}
C {devices/gnd.sym} 1510 -2450 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 1640 -2450 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 1880 -2450 0 0 {name=l3 lab=GND}
C {devices/code.sym} 1680 -2310 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {devices/vsource.sym} 1410 -2510 0 0 {name=V4 value=0 savecurrent=false}
C {devices/lab_pin.sym} 1410 -2570 0 0 {name=p5 sig_type=std_logic lab=vss}
C {devices/gnd.sym} 1410 -2450 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 1240 -2940 0 0 {name=p6 sig_type=std_logic lab=s}
C {devices/lab_pin.sym} 1240 -2920 0 0 {name=p7 sig_type=std_logic lab=r}
C {devices/lab_pin.sym} 1680 -3060 2 0 {name=p8 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1680 -2880 2 0 {name=p15 sig_type=std_logic lab=vss}
C {devices/res.sym} 1960 -2920 1 1 {name=R1
value=500
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 2040 -2850 0 0 {name=C1
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 2040 -2770 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} 1790 -2920 1 0 {name=p9 sig_type=std_logic lab=qb}
C {devices/lab_pin.sym} 2140 -2920 2 0 {name=p16 sig_type=std_logic lab=pin_out1}
C {devices/simulator_commands_shown.sym} 1950 -2310 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.option savecurrents

.control
save all
tran 100p 1u 
write testbench.raw
.endc
.end
"}
C {devices/launcher.sym} 2340 -1920 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/testbench.raw tran"
}
C {devices/ammeter.sym} 1680 -3010 0 0 {name=Vmeas savecurrent=true}
C {devices/res.sym} 1750 -2810 1 1 {name=R2
value=500
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 1830 -2740 0 0 {name=C2
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1830 -2660 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 1930 -2810 2 0 {name=p17 sig_type=std_logic lab=pin_out2}
C {devices/lab_wire.sym} 1800 -2890 1 0 {name=p12 sig_type=std_logic lab=q}
