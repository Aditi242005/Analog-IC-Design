v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -220 1200 -150 1200 {lab=vth}
N -90 1200 -20 1200 {lab=mn1}
N 40 1200 100 1200 {lab=mn2}
N 160 1200 330 1200 {lab=mn3}
N 220 860 440 860 {lab=mn3}
N 220 860 220 1200 {lab=mn3}
N 500 860 620 860 {lab=vo}
N 220 940 440 940 {lab=mn3}
N 620 860 620 1160 {lab=vo}
N 500 940 620 940 {lab=vo}
N 260 1100 330 1100 {lab=#net1}
N 260 1100 260 1260 {lab=#net1}
N 550 1160 840 1160 {lab=vo}
N -40 2130 20 2130 {lab=mn1}
N 80 2130 250 2130 {lab=mn2}
N 140 1870 360 1870 {lab=mn2}
N 420 1870 540 1870 {lab=vo}
N 180 2030 250 2030 {lab=#net2}
N 180 2030 180 2190 {lab=#net2}
N 470 2090 760 2090 {lab=vo}
N 540 1870 540 2090 {lab=vo}
N 140 1870 140 2130 {lab=mn2}
N -300 2130 -100 2130 {lab=vth}
C {vsource.sym} -220 1230 0 0 {name=V1 value="0 AC 1" savecurrent=false}
C {vsource.sym} 260 1290 0 0 {name=V2 value=1.5 savecurrent=false}
C {res.sym} 130 1200 3 0 {name=R1
value=4.7k
footprint=1206
device=resistor
m=1}
C {res.sym} -120 1200 3 0 {name=R2
value=380
footprint=1206
device=resistor
m=1}
C {res.sym} 470 940 3 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {capa.sym} 10 1200 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 470 860 3 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 840 1190 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 260 1320 0 0 {name=l3 lab=GND}
C {gnd.sym} 840 1220 0 0 {name=l4 lab=GND}
C {gnd.sym} -220 1260 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -170 1200 0 0 {name=p2 sig_type=std_logic lab=vth
}
C {lab_wire.sym} -40 1200 0 0 {name=p3 sig_type=std_logic lab=mn1}
C {lab_wire.sym} 80 1200 0 0 {name=p4 sig_type=std_logic lab=mn2}
C {lab_wire.sym} 710 1160 0 0 {name=p5 sig_type=std_logic lab=vo}
C {lab_wire.sym} 220 1070 0 0 {name=p10 sig_type=std_logic lab=mn3}
C {simulator_commands_shown.sym} -640 610 0 0 {name=COMMANDS
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
C {opamp_mod1.sym} 470 1340 0 0 {name=x1}
C {gnd.sym} 430 1220 0 0 {name=l2 lab=GND}
C {vsource.sym} -300 2160 0 0 {name=V3 value="0 AC 1" savecurrent=false}
C {vsource.sym} 180 2220 0 0 {name=V4 value=1.5 savecurrent=false}
C {res.sym} 50 2130 3 0 {name=R4
value=5k
footprint=1206
device=resistor
m=1}
C {res.sym} 390 1870 3 0 {name=R6
value=5k
footprint=1206
device=resistor
m=1}
C {capa.sym} -70 2130 3 0 {name=C4
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 760 2120 0 0 {name=C6
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 180 2250 0 0 {name=l5 lab=GND}
C {gnd.sym} 760 2150 0 0 {name=l6 lab=GND}
C {gnd.sym} -300 2190 0 0 {name=l7 lab=GND}
C {lab_wire.sym} 0 2130 0 0 {name=p7 sig_type=std_logic lab=mn1}
C {lab_wire.sym} 630 2090 0 0 {name=p8 sig_type=std_logic lab=vo}
C {lab_wire.sym} 140 2020 0 0 {name=p9 sig_type=std_logic lab=mn2}
C {simulator_commands_shown.sym} -720 1540 0 0 {name=COMMANDS1
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
C {opamp_mod1.sym} 390 2270 0 0 {name=x2}
C {gnd.sym} 350 2150 0 0 {name=l8 lab=GND}
C {lab_wire.sym} -200 2130 0 0 {name=p1 sig_type=std_logic lab=vth}
