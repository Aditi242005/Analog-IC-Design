v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -120 -70 -120 70 {}
L 4 -120 -70 60 10 {}
L 4 -120 70 60 10 {}
L 7 60 10 80 10 {}
L 7 -140 -50 -120 -50 {}
L 7 -140 50 -120 50 {}
L 7 -40 50 -40 70 {}
L 7 -30 -50 -30 -30 {}
L 7 -70 -70 -70 -50 {}
B 5 77.5 7.5 82.5 12.5 {name=vout dir=inout}
B 5 -142.5 -52.5 -137.5 -47.5 {name=vim
 dir=inout}
B 5 -142.5 47.5 -137.5 52.5 {name=vip dir=inout}
B 5 -42.5 67.5 -37.5 72.5 {name=AVSS dir=inout}
B 5 -32.5 -52.5 -27.5 -47.5 {name=AVSS dir=inout}
B 5 -72.5 -72.5 -67.5 -67.5 {name=AVSS dir=inout}
T {@symname} -93 -6 0 0 0.3 0.3 {}
T {vout} 55 6 0 1 0.2 0.2 {}
T {vim
} -115 -46 2 1 0.2 0.2 {}
T {vip} -115 54 2 1 0.2 0.2 {}
T {AVSS} -36 45 1 1 0.2 0.2 {}
T {ib5u} -34 -25 3 1 0.2 0.2 {}
T {AVDD} -66 -15 1 1 0.2 0.2 {}
N -260 50 -260 60 {lab=#net1}
N -260 50 -140 50 {lab=#net1}
N -600 -50 -600 60 {lab=#net2}
N -600 -50 -140 -50 {lab=#net2}
N -600 120 -600 160 {lab=#net3}
N -600 160 -260 160 {lab=#net3}
N -260 120 -260 160 {lab=#net3}
N -420 160 -420 220 {lab=#net3}
N -40 70 -40 100 {lab=GND}
N -420 280 -420 300 {lab=GND}
N -680 110 -680 140 {lab=GND}
N -680 110 -640 110 {lab=GND}
N -300 40 -300 70 {lab=#net4}
N -760 40 -300 40 {lab=#net4}
N -760 40 -760 140 {lab=#net4}
N -680 70 -640 70 {lab=#net4}
N -680 40 -680 70 {lab=#net4}
N -680 140 -680 190 {lab=GND}
N -760 200 -760 290 {lab=GND}
N -300 110 -300 130 {lab=GND}
N -680 130 -300 130 {lab=GND}
N 80 10 80 60 {lab=#net5}
N 80 120 80 160 {lab=GND}
N -30 -180 -30 -50 {lab=#net6}
N -30 -280 -30 -240 {lab=#net7}
N -200 -280 -30 -280 {lab=#net7}
N -200 -280 -200 -240 {lab=#net7}
N -200 -180 -200 -140 {lab=GND}
N -70 -90 -70 -80 {lab=#net7}
N -70 -100 -70 -90 {lab=#net7}
N -70 -110 -70 -100 {lab=#net7}
N -70 -120 -70 -110 {lab=#net7}
N -70 -130 -70 -120 {lab=#net7}
N -70 -140 -70 -130 {lab=#net7}
N -70 -150 -70 -140 {lab=#net7}
N -70 -160 -70 -150 {lab=#net7}
N -70 -170 -70 -160 {lab=#net7}
N -70 -180 -70 -170 {lab=#net7}
N -70 -190 -70 -180 {lab=#net7}
N -70 -200 -70 -190 {lab=#net7}
N -70 -210 -70 -200 {lab=#net7}
N -70 -220 -70 -210 {lab=#net7}
N -70 -230 -70 -220 {lab=#net7}
N -70 -240 -70 -230 {lab=#net7}
N -70 -250 -70 -240 {lab=#net7}
N -70 -260 -70 -250 {lab=#net7}
N -70 -270 -70 -260 {lab=#net7}
N -70 -280 -70 -270 {lab=#net7}
N -70 -300 -70 -290 {lab=#net7}
N -70 -290 -70 -280 {lab=#net7}
C {vcvs.sym} -260 90 0 0 {name=E1 value=0.5}
C {vcvs.sym} -600 90 0 0 {name=E2 value=-0.5}
C {vsource.sym} -420 250 0 0 {name=V1 value=0.9 savecurrent=false}
C {vsource.sym} -760 170 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} -680 190 0 0 {name=l1 lab=GND}
C {gnd.sym} -420 300 0 0 {name=l2 lab=GND}
C {gnd.sym} -40 100 0 0 {name=l3 lab=GND}
C {gnd.sym} -760 290 0 0 {name=l4 lab=GND}
C {capa.sym} 80 90 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 80 160 0 0 {name=l5 lab=GND}
C {isource.sym} -30 -210 0 0 {name=I0 value=5u}
C {vsource.sym} -200 -210 0 0 {name=V3 value=1.8 savecurrent=false}
C {gnd.sym} -200 -140 0 0 {name=l6 lab=GND}
C {devices/code.sym} -820 -190 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
