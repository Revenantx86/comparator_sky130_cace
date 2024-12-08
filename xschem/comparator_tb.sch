v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 500 160 500 180 {
lab=q_b}
N 50 170 50 190 {
lab=GND}
N 50 70 50 110 {
lab=vss}
N 130 170 130 190 {
lab=GND}
N 50 190 50 210 {
lab=GND}
N 130 70 130 110 {
lab=vdd}
N 50 190 130 190 {
lab=GND}
N 210 70 210 110 {
lab=vb0}
N 210 170 210 190 {
lab=GND}
N 310 280 310 360 {
lab=Vn}
N 150 280 150 360 {
lab=Vp}
N 590 160 590 180 {
lab=q}
N 500 150 500 160 {lab=q_b}
N 460 150 500 150 {lab=q_b}
N 460 110 590 110 {lab=q}
N 590 110 590 160 {lab=q}
N 130 190 210 190 {lab=GND}
N 150 420 150 500 {
lab=GND}
N 310 420 310 500 {
lab=GND}
C {devices/lab_wire.sym} 410 80 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {devices/capa.sym} 500 210 0 0 {name=C1
m=1
value=CACE\{cl\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 500 240 0 0 {name=l2 lab=GND}
C {devices/code_shown.sym} 660 90 0 0 {name=SETUP
simulator=ngspice
only_toplevel=false
value="
.lib CACE\{PDK_ROOT\}/CACE\{PDK\}/libs.tech/combined/sky130.lib.spice CACE\{corner\}

.include CACE\{DUT_path\}

.temp CACE\{temperature\}

.option SEED=CACE[CACE\{seed=12345\} + CACE\{iterations=0\}]

* Flag unsafe operating conditions (exceeds models' specified limits)
.option warn=1
"}
C {devices/vsource.sym} 50 140 0 0 {name=V0 value=0 savecurrent=false}
C {devices/gnd.sym} 50 210 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 130 140 0 0 {name=V2 value=CACE\{vdd\} savecurrent=false}
C {devices/lab_wire.sym} 50 70 0 0 {name=p1 sig_type=std_logic lab=vss}
C {devices/gnd.sym} 150 500 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} 150 280 0 0 {name=p12 sig_type=std_logic lab=Vp}
C {devices/lab_wire.sym} 310 280 0 0 {name=p13 sig_type=std_logic lab=Vn}
C {devices/lab_wire.sym} 130 70 0 0 {name=p5 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 210 70 0 0 {name=p6 sig_type=std_logic lab=vb0}
C {devices/lab_wire.sym} 410 180 2 1 {name=p9 sig_type=std_logic lab=vss}
C {/home/unixpoly/vlsi/projects/cace/comparator_sky130_cace/xschem/comparator.sym} 410 130 0 0 {name=X1}
C {devices/capa.sym} 590 210 0 0 {name=C2
m=1
value=CACE\{cl\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 590 240 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 560 110 0 0 {name=p3 sig_type=std_logic lab=q}
C {devices/lab_wire.sym} 500 150 0 0 {name=p4 sig_type=std_logic lab=q_b}
C {devices/vsource.sym} 210 140 0 0 {name=V1 value=CACE\{vb0\} savecurrent=false}
C {devices/lab_wire.sym} 420 80 0 1 {name=p7 sig_type=std_logic lab=vb0}
C {devices/lab_wire.sym} 360 100 0 0 {name=p8 sig_type=std_logic lab=vp}
C {devices/lab_wire.sym} 360 160 0 0 {name=p10 sig_type=std_logic lab=vp}
C {devices/lab_wire.sym} 360 130 0 0 {name=p11 sig_type=std_logic lab=clk_b}
C {devices/vsource.sym} 150 390 0 0 {name=V3 value=1 savecurrent=false}
C {devices/vsource.sym} 310 390 0 0 {name=V4 value=0.5 savecurrent=false}
C {devices/gnd.sym} 310 500 0 0 {name=l4 lab=GND}
