v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 310 -380 310 -350 { lab=GND}
N 120 -410 120 -380 { lab=GND}
N 120 -520 120 -470 { lab=VDD}
N 410 -630 440 -630 { lab=Vin}
N 480 -680 480 -660 { lab=VDD}
N 480 -630 500 -630 { lab=VDD}
N 500 -670 500 -630 { lab=VDD}
N 480 -670 500 -670 { lab=VDD}
N 500 -530 500 -510 { lab=VDD}
N 480 -510 500 -510 { lab=VDD}
N 480 -600 480 -540 { lab=Vout1}
N 480 -480 480 -420 { lab=Vout}
N 480 -360 480 -290 { lab=Vout2}
N 480 -390 490 -390 { lab=GND}
N 490 -390 490 -360 { lab=GND}
N 480 -260 500 -260 { lab=GND}
N 480 -230 480 -200 { lab=GND}
N 500 -260 500 -220 { lab=GND}
N 480 -220 500 -220 { lab=GND}
N 410 -630 410 -260 { lab=Vin}
N 410 -260 440 -260 { lab=Vin}
N 410 -390 440 -390 { lab=Vin}
N 410 -510 440 -510 { lab=Vin}
N 480 -450 530 -450 { lab=Vout}
N 480 -580 530 -580 { lab=Vout1}
N 480 -320 530 -320 { lab=Vout2}
N 380 -510 410 -510 { lab=Vin}
N 310 -480 310 -440 { lab=Vin}
C {sky130_fd_pr/nfet_01v8.sym} 460 -390 0 0 {name=M1
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
C {devices/vsource.sym} 310 -410 0 0 {name=V1 value="AC 1"}
C {devices/gnd.sym} 310 -350 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 120 -440 0 0 {name=V2 value=1.8}
C {devices/gnd.sym} 120 -380 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 120 -520 0 0 {name=l7 lab=VDD}
C {devices/code.sym} 800 -410 0 0 {name=TT_MODELS
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
C {devices/code_shown.sym} 810 -220 0 0 {name=SPICE only_toplevel=false value="
.param LP1=0.15
.param WP1=25
.param LN1=0.15
.param WN1=12.5

.param LP2=0.15
.param WP2=5
.param LN2=0.15
.param WN2=25

.dc V1 0 1.8 0.01
.control

let start_WN1 = 0.000001
let stop_WN1 = 0.0001
let delta_WN1 = 0.00001
let actual_WN1 = start_WN1

while actual_WN1 le stop_WN1
 alter m.xm1.msky130_fd_pr__nfet_01v8 W = actual_WN1
 dc V1 0 1.8 0.01
 * plot v(Vout)
 * print XM1[w] 
 let actual_WN1 = actual_WN1 + delta_WN1
end
plot dc1.v(Vout) dc5.v(Vout) dc10.v(Vout)
.endc
.save all"}
C {sky130_fd_pr/nfet_01v8.sym} 460 -260 0 0 {name=M2
L=LN1
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
C {sky130_fd_pr/pfet_01v8.sym} 460 -510 0 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} 460 -630 0 0 {name=M4
L=LP1
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
C {devices/vdd.sym} 480 -680 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 490 -360 0 0 {name=l10 lab=GND}
C {devices/vdd.sym} 500 -530 0 0 {name=l11 lab=VDD}
C {devices/gnd.sym} 480 -200 0 0 {name=l45 lab=GND}
C {devices/lab_pin.sym} 530 -450 2 0 {name=l2 sig_type=std_logic lab=Vout}
C {devices/lab_pin.sym} 530 -580 2 0 {name=l4 sig_type=std_logic lab=Vout1}
C {devices/lab_pin.sym} 530 -320 2 0 {name=l5 sig_type=std_logic lab=Vout2}
C {devices/lab_pin.sym} 380 -510 0 0 {name=l8 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 310 -480 1 0 {name=l9 sig_type=std_logic lab=Vin}
