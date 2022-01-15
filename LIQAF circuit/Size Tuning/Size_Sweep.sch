v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 350 -550 350 -520 { lab=GND}
N 160 -580 160 -550 { lab=GND}
N 160 -690 160 -640 { lab=VDD}
N 450 -800 480 -800 { lab=Vin}
N 520 -850 520 -830 { lab=VDD}
N 520 -800 540 -800 { lab=VDD}
N 540 -840 540 -800 { lab=VDD}
N 520 -840 540 -840 { lab=VDD}
N 540 -700 540 -680 { lab=VDD}
N 520 -680 540 -680 { lab=VDD}
N 520 -770 520 -710 { lab=Vout1}
N 520 -650 520 -590 { lab=Vout}
N 520 -530 520 -460 { lab=Vout2}
N 520 -560 530 -560 { lab=GND}
N 530 -560 530 -530 { lab=GND}
N 520 -430 540 -430 { lab=GND}
N 520 -400 520 -370 { lab=GND}
N 540 -430 540 -390 { lab=GND}
N 520 -390 540 -390 { lab=GND}
N 450 -800 450 -430 { lab=Vin}
N 450 -430 480 -430 { lab=Vin}
N 450 -560 480 -560 { lab=Vin}
N 450 -680 480 -680 { lab=Vin}
N 520 -620 570 -620 { lab=Vout}
N 520 -750 570 -750 { lab=Vout1}
N 520 -490 570 -490 { lab=Vout2}
N 420 -680 450 -680 { lab=Vin}
N 350 -650 350 -610 { lab=Vin}
C {sky130_fd_pr/nfet_01v8.sym} 500 -560 0 0 {name=M1
L=LN1
W=WN1
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
C {devices/vsource.sym} 350 -580 0 0 {name=V1 value="AC 1"}
C {devices/gnd.sym} 350 -520 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 160 -610 0 0 {name=V2 value=1.8}
C {devices/gnd.sym} 160 -550 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 160 -690 0 0 {name=l7 lab=VDD}
C {devices/code.sym} 740 -1110 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="** manual skywater pdks install (with patches applied)
* .lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

** opencircuitdesign pdks install
.lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=0
.param LP1=0.15
"}
C {devices/code_shown.sym} 750 -920 0 0 {name=SPICE only_toplevel=false value="
.option method=gear seed=12
.param LP1=1.5
.param WP1=25
.param LN1=1.5
.param WN1=1

.param LP2=0.15
.param WP2=5
.param LN2=0.15
.param WN2=25

.dc V1 0 1.8 0.01
.control

let start_WN1 = 1
let stop_WN1 = 100
let delta_WN1 = 0.5
let actual_WN1 = start_WN1

let start_WP1 = 1
let stop_WP1 = 100
let delta_WP1 = 0.5
let actual_WP1 = start_WP1

while actual_WN1 le stop_WN1
 while actual_WP1 le stop_WP1
  echo RUN WN1= $&actual_WN1, WP1= $&actual_WP1
  alterparam WN1 = $&actual_WN1
  alterparam WP1 = $&actual_WP1
  reset

  dc V1 0 1.8 0.01 
  let actual_WP1 = actual_WP1 + delta_WP1

  set wr_singlescale
  set wr_vecnames
  set appendwrite
  wrdata sim_data.txt actual_WN1 actual_WP1
  wrdata sim_data.txt v(Vout)
 end
 let actual_WP1 = start_WP1
 let actual_WN1 = actual_WN1 + delta_WN1
end

plot dc1.v(Vout) dc2.v(Vout) dc3.v(Vout) dc4.v(Vout) dc5.v(Vout) dc6.v(Vout) dc7.v(Vout) dc8.v(Vout) dc9.v(Vout) dc10.v(Vout)
.endc
.save all"}
C {sky130_fd_pr/nfet_01v8.sym} 500 -430 0 0 {name=M2
L=LN2
W=WN2
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
C {sky130_fd_pr/pfet_01v8.sym} 500 -680 0 0 {name=M3
L=LP1
W=WP1
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
C {sky130_fd_pr/pfet_01v8.sym} 500 -800 0 0 {name=M4
L=LP2
W=WP2
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
C {devices/vdd.sym} 520 -850 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 530 -530 0 0 {name=l10 lab=GND}
C {devices/vdd.sym} 540 -700 0 0 {name=l11 lab=VDD}
C {devices/gnd.sym} 520 -370 0 0 {name=l45 lab=GND}
C {devices/lab_pin.sym} 570 -620 2 0 {name=l2 sig_type=std_logic lab=Vout}
C {devices/lab_pin.sym} 570 -750 2 0 {name=l4 sig_type=std_logic lab=Vout1}
C {devices/lab_pin.sym} 570 -490 2 0 {name=l5 sig_type=std_logic lab=Vout2}
C {devices/lab_pin.sym} 420 -680 0 0 {name=l8 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 350 -650 1 0 {name=l9 sig_type=std_logic lab=Vin}
