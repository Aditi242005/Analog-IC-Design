v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -180 -140 -120 -140 {lab=mn1}
N -60 -140 110 -140 {lab=mn2}
N 0 -400 220 -400 {lab=mn2}
N 280 -400 400 -400 {lab=vo}
N 40 -240 110 -240 {lab=#net1}
N 40 -240 40 -80 {lab=#net1}
N 400 -400 400 -180 {lab=vo}
N 0 -400 0 -140 {lab=mn2}
N -440 -140 -240 -140 {lab=vth}
N 330 -180 490 -180 {lab=vo}
C {vsource.sym} -440 -110 0 0 {name=V3 value="0 AC 1" savecurrent=false}
C {vsource.sym} 40 -50 0 0 {name=V4 value=1.5 savecurrent=false}
C {res.sym} -90 -140 3 0 {name=R1
value=5k
footprint=1206
device=resistor
m=1}
C {res.sym} 250 -400 3 0 {name=R2
value=5k
footprint=1206
device=resistor
m=1}
C {capa.sym} -210 -140 3 0 {name=C4
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 40 -20 0 0 {name=l5 lab=GND}
C {gnd.sym} -440 -80 0 0 {name=l7 lab=GND}
C {lab_wire.sym} -140 -140 0 0 {name=p7 sig_type=std_logic lab=mn1}
C {lab_wire.sym} 490 -180 0 0 {name=p8 sig_type=std_logic lab=vo}
C {lab_wire.sym} 0 -250 0 0 {name=p9 sig_type=std_logic lab=mn2}
C {simulator_commands_shown.sym} -860 -730 0 0 {name=COMMANDS1
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
C {opamp_mod1.sym} 250 0 0 0 {name=x1}
C {gnd.sym} 210 -120 0 0 {name=l8 lab=GND}
C {lab_wire.sym} -340 -140 0 0 {name=p1 sig_type=std_logic lab=vth}
