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
pin_out"
color="10 14"
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
node=q
color=12
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
N 1460 -2620 1460 -2590 {
lab=vdd}
N 1590 -2620 1590 -2590 {
lab=s}
N 1830 -2620 1830 -2590 {
lab=r}
N 1830 -2530 1830 -2500 {
lab=GND}
N 1590 -2530 1590 -2500 {
lab=GND}
N 1460 -2530 1460 -2500 {
lab=GND}
N 1360 -2620 1360 -2590 {
lab=vss}
N 1360 -2530 1360 -2500 {
lab=GND}
N 1930 -2920 1980 -2920 {
lab=pin_out}
N 1980 -2920 1980 -2880 {
lab=pin_out}
N 1980 -2820 1980 -2770 {
lab=GND}
N 1980 -2920 2080 -2920 {
lab=pin_out}
N 1600 -2920 1790 -2920 {
lab=qb}
N 1790 -2920 1880 -2920 {
lab=qb}
N 1680 -2980 1680 -2940 {
lab=#net1}
N 1680 -3060 1680 -3040 {
lab=vdd}
C {sr_latch.sym} 1450 -2910 0 0 {name=x1}
C {devices/ipin.sym} 1240 -2620 0 0 {name=p1 lab=s}
C {devices/ipin.sym} 1240 -2590 0 0 {name=p2 lab=r}
C {devices/iopin.sym} 1190 -2560 0 0 {name=p3 lab=vdd}
C {devices/opin.sym} 1190 -2500 0 0 {name=p4 lab=q}
C {devices/opin.sym} 1190 -2530 0 0 {name=p10 lab=qb}
C {devices/vsource.sym} 1460 -2560 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vsource.sym} 1590 -2560 0 0 {name=V2 value="PULSE(0 1.8 10n 1n 1n 40n 400n)" savecurrent=false}
C {devices/lab_pin.sym} 1460 -2620 0 0 {name=p11 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1590 -2620 0 0 {name=p13 sig_type=std_logic lab=s}
C {devices/lab_pin.sym} 1830 -2620 0 0 {name=p14 sig_type=std_logic lab=r}
C {devices/vsource.sym} 1830 -2560 0 0 {name=V3 value="PULSE(0 1.8 110n 1n 1n 40n 400n)" savecurrent=false}
C {devices/gnd.sym} 1460 -2500 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 1590 -2500 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 1830 -2500 0 0 {name=l3 lab=GND}
C {devices/code.sym} 1680 -2310 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {devices/vsource.sym} 1360 -2560 0 0 {name=V4 value=0 savecurrent=false}
C {devices/lab_pin.sym} 1360 -2620 0 0 {name=p5 sig_type=std_logic lab=vss}
C {devices/gnd.sym} 1360 -2500 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 1240 -2940 0 0 {name=p6 sig_type=std_logic lab=s}
C {devices/lab_pin.sym} 1240 -2920 0 0 {name=p7 sig_type=std_logic lab=r}
C {devices/lab_pin.sym} 1680 -3060 2 0 {name=p8 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1640 -2900 2 0 {name=p12 sig_type=std_logic lab=q}
C {devices/lab_pin.sym} 1680 -2880 2 0 {name=p15 sig_type=std_logic lab=vss}
C {devices/res.sym} 1900 -2920 1 1 {name=R1
value=500
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 1980 -2850 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1980 -2770 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} 1790 -2920 1 0 {name=p9 sig_type=std_logic lab=qb}
C {devices/lab_pin.sym} 2080 -2920 2 0 {name=p16 sig_type=std_logic lab=pin_out}
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
C {devices/launcher.sym} 2350 -1920 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/testbench.raw tran"
}
C {devices/ammeter.sym} 1680 -3010 0 0 {name=Vmeas savecurrent=true}
