v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -160 50 -100 50 {lab=mn1}
N -40 50 130 50 {lab=mn2}
N 20 -210 240 -210 {lab=mn2}
N 20 -210 20 50 {lab=mn2}
N -420 50 -220 50 {lab=vth}
N 300 -210 350 -210 {lab=vo}
N 170 0 270 0 {lab=#net1}
N 330 0 400 0 {lab=#net2}
N 400 0 500 0 {lab=#net2}
N 500 0 500 10 {lab=#net2}
N 500 10 540 10 {lab=#net2}
N 400 60 500 60 {lab=GND}
N 500 50 500 60 {lab=GND}
N 500 50 540 50 {lab=GND}
N 170 60 400 60 {lab=GND}
N 350 -210 580 -210 {lab=vo}
N 580 -210 580 -0 {lab=vo}
N 60 10 130 10 {lab=#net3}
N 60 10 60 110 {lab=#net3}
C {vsource.sym} -420 80 0 0 {name=V3 value="0 AC 1" savecurrent=false}
C {vsource.sym} 60 140 0 0 {name=V4 value=1.5 savecurrent=false}
C {res.sym} -70 50 3 0 {name=R1
value=5k
footprint=1206
device=resistor
m=1}
C {res.sym} 270 -210 3 0 {name=R2
value=5k
footprint=1206
device=resistor
m=1}
C {capa.sym} -190 50 3 0 {name=C4
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 60 170 0 0 {name=l5 lab=GND}
C {gnd.sym} -420 110 0 0 {name=l7 lab=GND}
C {lab_wire.sym} -120 50 0 0 {name=p7 sig_type=std_logic lab=mn1}
C {lab_wire.sym} 350 -210 0 0 {name=p8 sig_type=std_logic lab=vo}
C {lab_wire.sym} 20 -60 0 0 {name=p9 sig_type=std_logic lab=mn2}
C {simulator_commands_shown.sym} -840 -540 0 0 {name=COMMANDS1
simulator=ngspice
only_toplevel=false 
value="
.control
OP
save all
write micTest.raw
set appendwrite
AC DEC 100 1 10e6
write micTest.raw
**
 meas ac gain_db MAX vdb(vo) FROM=0.1 TO=10e6
  LET f3db = gain_db - 3.0
  print f3db
  plot vdb(vo)
  MEAS AC fzero WHEN vdb(vo)=f3db RISE=1
  MEAS AC fpole WHEN vdb(vo)=f3db FALL=1
**  MEAS AC fmid WHEN vdb(vo)=gain_db
**Phase Measurement
  LET phase_deg = cph(vo)*180/PI
  MEAS AC phase_zero FIND phase_deg AT=fzero
  MEAS AC phase_pole FIND phase_deg AT=fpole
**  MEAS AC phase_mid FIND phase_deg AT=fmid
**MEAS fzero fpole using
  LET phase_zero_ph = phase_mid-45
  **MEAS AC fzero_ph WHEN phase_deg=phase_zero_ph
  **tran 1u 5m
.endc
.end
"}
C {gnd.sym} 580 60 0 0 {name=l8 lab=GND}
C {lab_wire.sym} -320 50 0 0 {name=p1 sig_type=std_logic lab=vth}
C {vcvs.sym} 170 30 0 0 {name=E3 value=1000}
C {vcvs.sym} 580 30 0 0 {name=E4 value=1}
C {res.sym} 300 0 1 0 {name=R4
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} 400 30 0 0 {name=C2
m=1
value=160n
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 170 60 0 0 {name=l1 lab=GND}
C {gnd.sym} 350 60 0 0 {name=l2 lab=GND}
