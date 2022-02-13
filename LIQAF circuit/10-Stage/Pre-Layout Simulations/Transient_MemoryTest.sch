v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 9120 -92080 9120 -92050 { lab=GND}
N 8990 -92270 8990 -92240 { lab=GND}
N 8990 -92380 8990 -92330 { lab=VDD}
N 9610 -92150 9610 -92100 { lab=GND}
N 9610 -92160 9610 -92150 { lab=GND}
N 9580 -92160 9610 -92160 { lab=GND}
N 9240 -92280 9280 -92280 { lab=VIN}
N 9250 -92410 9250 -92400 { lab=VDD}
N 9250 -92400 9280 -92400 { lab=VDD}
N 9120 -92280 9240 -92280 { lab=VIN}
N 9120 -92180 9120 -92140 { lab=V1}
N 9120 -92280 9120 -92240 { lab=VIN}
N 8500 -92210 8500 -92170 { lab=#net1}
N 8500 -92210 9080 -92210 { lab=#net1}
N 8500 -92110 8500 -92090 { lab=GND}
N 9080 -92190 9080 -92170 { lab=GND}
C {devices/gnd.sym} 9120 -92050 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 8990 -92300 0 0 {name=V2 value=1.8}
C {devices/gnd.sym} 8990 -92240 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 8990 -92380 0 0 {name=l7 lab=VDD}
C {devices/code.sym} 9980 -92180 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="** manual skywater pdks install (with patches applied)
* .lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

** opencircuitdesign pdks install
.lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=0
"}
C {devices/code_shown.sym} 9990 -91990 0 0 {name=SPICE only_toplevel=false value=".tran 1u 5m
.control
run
plot v(VOUT1) v(VOUT2) v(VOUT3) v(VOUT4) v(VOUT5) v(VOUT6) v(VOUT7) v(VOUT8) v(VOUT9) v(VOUT10) 
plot v(V1) v(VIN)
.endc
.save all"}
C {devices/gnd.sym} 9610 -92100 0 0 {name=l2 lab=GND}
C {devices/code_shown.sym} 9940 -92520 0 0 {name=PARAMETERS only_toplevel=false value="
.param LP0=0.15
.param WP0=25
.param LN0=0.15
.param WN0=12.5

.param LP1=0.15
.param WP1=25
.param LN1=0.15
.param WN1=12.5

.param LP2=0.15
.param WP2=5
.param LN2=0.15
.param WN2=25
"}
C {devices/lab_pin.sym} 9120 -92170 2 0 {name=l4 sig_type=std_logic lab=V1}
C {/home/sudhar/Documents/VLSI/Analog-MSM-Array/LIQAF circuit/10-Stage/MSM_10.sym} 9430 -92280 0 0 {name=x1}
C {devices/vdd.sym} 9250 -92410 0 0 {name=l3 lab=VDD}
C {devices/lab_pin.sym} 9580 -92400 0 1 {name=p1 lab=VDD}
C {devices/lab_pin.sym} 9580 -92370 0 1 {name=p2 lab=VOUT1}
C {devices/lab_pin.sym} 9580 -92350 0 1 {name=p3 lab=VOUT2}
C {devices/lab_pin.sym} 9580 -92330 0 1 {name=p4 lab=VOUT3}
C {devices/lab_pin.sym} 9580 -92310 0 1 {name=p5 lab=VOUT4}
C {devices/lab_pin.sym} 9580 -92290 0 1 {name=p6 lab=VOUT5}
C {devices/lab_pin.sym} 9580 -92270 0 1 {name=p7 lab=VOUT6}
C {devices/lab_pin.sym} 9580 -92250 0 1 {name=p8 lab=VOUT7}
C {devices/lab_pin.sym} 9580 -92230 0 1 {name=p9 lab=VOUT8}
C {devices/lab_pin.sym} 9580 -92210 0 1 {name=p10 lab=VOUT9}
C {devices/lab_pin.sym} 9580 -92190 0 1 {name=p11 lab=VOUT10}
C {devices/lab_pin.sym} 9280 -92160 0 0 {name=p12 lab=VSS}
C {/home/sudhar/OpenPDK/xschem/xschem_library/devices/vsource.sym} 9120 -92110 0 0 {name=V1 value="pwl (0 0 1m 0 1.1m 0.8 2m 0.8 2.1m 0 3m 0 3.00000001m 0.9 4m 0.9 4.1m 0 5m 0)"}
C {/home/sudhar/OpenPDK/xschem/xschem_library/devices/switch_ngspice.sym} 9120 -92210 0 0 {name=S2 model=SWITCH1}
C {/home/sudhar/OpenPDK/xschem/xschem_library/devices/vsource.sym} 8500 -92140 0 0 {name=V3 value="pwl (0 0 1m 0 1.00001m 1 2m 1 2.000001m 0 3m 0 3.00001m 1 4m 1 4.0000001m 0 5m 0)"}
C {devices/gnd.sym} 8500 -92090 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} 9080 -92170 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} 9200 -92280 3 0 {name=l5 sig_type=std_logic lab=VIN}
