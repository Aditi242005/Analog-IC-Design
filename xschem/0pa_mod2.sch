v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -140 -30 -40 -30 {lab=#net1}
N 20 -30 90 -30 {lab=#net2}
N 90 -30 190 -30 {lab=#net2}
N 190 -30 190 -20 {lab=#net2}
N 190 -20 230 -20 {lab=#net2}
N 90 30 190 30 {lab=#net3}
N 190 20 190 30 {lab=#net3}
N 190 20 230 20 {lab=#net3}
N -140 30 90 30 {lab=#net3}
N -240 -20 -180 -20 {lab=xxx}
N -240 20 -180 20 {lab=xxx}
N 270 -30 340 -30 {lab=xxx}
N 270 30 340 30 {lab=xxx}
C {vcvs.sym} -140 0 0 0 {name=E1 value=1000}
C {vcvs.sym} 270 0 0 0 {name=E2 value=1}
C {res.sym} -10 -30 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} 90 0 0 0 {name=C1
m=1
value=160n
footprint=1206
device="ceramic capacitor"}
C {iopin.sym} -240 -20 2 0 {name=p1 lab=xxx}
C {iopin.sym} -240 20 2 0 {name=p2 lab=xxx}
C {iopin.sym} 340 -30 0 0 {name=p3 lab=xxx}
C {iopin.sym} 340 30 0 0 {name=p4 lab=xxx}
