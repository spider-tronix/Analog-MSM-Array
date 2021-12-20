v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 400 -160 400 -130 { lab=GND}
N 180 -160 180 -130 { lab=GND}
N 180 -270 180 -220 { lab=VDD}
N 570 -380 570 -330 { lab=Vout2}
N 570 -270 570 -210 { lab=Vout1}
N 720 -360 720 -330 { lab=Vout2}
N 570 -360 720 -360 { lab=Vout2}
N 720 -270 720 -240 { lab=Vout1}
N 570 -240 720 -240 { lab=Vout1}
N 500 -410 530 -410 { lab=#net1}
N 500 -410 500 -180 { lab=#net1}
N 500 -180 530 -180 { lab=#net1}
N 500 -300 530 -300 { lab=#net1}
N 500 -460 500 -410 { lab=#net1}
N 780 -460 780 -300 { lab=#net1}
N 760 -300 780 -300 { lab=#net1}
N 570 -150 570 -120 { lab=GND}
N 400 -300 400 -220 { lab=#net1}
N 500 -500 500 -460 { lab=#net1}
N 500 -500 780 -500 { lab=#net1}
N 780 -500 780 -460 { lab=#net1}
N 570 -460 570 -440 { lab=VDD}
N 960 -370 960 -300 { lab=#net2}
N 960 -170 960 -100 { lab=#net3}
N 870 -170 900 -170 { lab=Vout1}
N 870 -240 870 -170 { lab=Vout1}
N 870 -240 990 -240 { lab=Vout1}
N 990 -260 990 -240 { lab=Vout1}
N 870 -300 930 -300 { lab=Vout2}
N 930 -300 930 -210 { lab=Vout2}
N 780 -500 1060 -500 { lab=#net1}
N 1060 -500 1060 -100 { lab=#net1}
N 1020 -100 1060 -100 { lab=#net1}
N 1020 -300 1060 -300 { lab=#net1}
N 720 -360 870 -360 { lab=Vout2}
N 900 -370 900 -360 { lab=Vout2}
N 870 -360 900 -360 { lab=Vout2}
N 870 -360 870 -300 { lab=Vout2}
N 720 -240 870 -240 { lab=Vout1}
N 400 -300 500 -300 { lab=#net1}
N 930 -430 930 -410 { lab=VDD}
N 990 -60 990 -40 { lab=GND}
N 820 -240 820 -200 { lab=Vout1}
N 820 -400 820 -360 { lab=Vout2}
N 570 -180 590 -180 { lab=GND}
N 590 -180 590 -140 { lab=GND}
N 570 -140 590 -140 { lab=GND}
N 570 -300 590 -300 { lab=GND}
N 590 -300 590 -270 { lab=GND}
N 570 -410 590 -410 { lab=VDD}
N 590 -450 590 -410 { lab=VDD}
N 570 -450 590 -450 { lab=VDD}
N 700 -300 720 -300 { lab=VDD}
N 700 -350 700 -300 { lab=VDD}
N 990 -330 990 -300 { lab=VDD}
N 990 -150 990 -100 { lab=VDD}
N 930 -170 930 -140 { lab=GND}
N 930 -370 930 -350 { lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 550 -300 0 0 {name=M1
L=0.15
W=1
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
C {devices/vsource.sym} 400 -190 0 0 {name=V1 value="AC 1"}
C {devices/gnd.sym} 400 -130 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 180 -190 0 0 {name=V2 value=1.8}
C {devices/gnd.sym} 180 -130 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 180 -270 0 0 {name=l7 lab=VDD}
C {devices/code.sym} 1160 -420 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="** manual skywater pdks install (with patches applied)
* .lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

** opencircuitdesign pdks install
.lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=0
"}
C {devices/code_shown.sym} 1170 -230 0 0 {name=SPICE only_toplevel=false value=".dc V1 0 1.8 0.1
.control
run
plot v(Vout1) v(Vout2)
.endc
.save all"}
C {sky130_fd_pr/nfet_01v8.sym} 550 -180 0 0 {name=M2
L=0.15
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 740 -300 0 1 {name=M3
L=0.15
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 550 -410 0 0 {name=M4
L=0.15
W=1
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
C {devices/gnd.sym} 570 -120 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} 570 -460 0 0 {name=l3 lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 930 -390 3 1 {name=M5
L=0.15
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 990 -280 3 0 {name=M6
L=0.15
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} 930 -190 3 1 {name=M7
L=0.15
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 990 -80 3 0 {name=M8
L=0.15
W=1
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
C {devices/vdd.sym} 930 -430 0 0 {name=l4 lab=VDD}
C {devices/gnd.sym} 990 -40 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 820 -200 3 0 {name=l8 sig_type=std_logic lab=Vout1}
C {devices/lab_pin.sym} 820 -400 1 0 {name=l9 sig_type=std_logic lab=Vout2}
C {devices/gnd.sym} 590 -270 0 0 {name=l10 lab=GND}
C {devices/vdd.sym} 700 -350 0 0 {name=l11 lab=VDD}
C {devices/vdd.sym} 990 -330 0 0 {name=l12 lab=VDD}
C {devices/vdd.sym} 990 -150 0 0 {name=l13 lab=VDD}
C {devices/gnd.sym} 930 -140 0 0 {name=l14 lab=GND}
C {devices/gnd.sym} 930 -350 0 0 {name=l15 lab=GND}
