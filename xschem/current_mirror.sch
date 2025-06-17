v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -90 -0 90 -0 {lab=#net1}
N -130 -90 -130 -30 {lab=#net1}
N -130 -90 -60 -90 {lab=#net1}
N -60 -90 -60 -0 {lab=#net1}
N 300 30 300 110 {lab=GND}
N 130 30 130 110 {lab=GND}
N 130 -0 210 0 {lab=GND}
N 210 -0 210 110 {lab=GND}
N 130 -90 130 -30 {lab=#net2}
N 130 -90 300 -90 {lab=#net2}
N 300 -90 300 -30 {lab=#net2}
N -280 -90 -280 -30 {lab=#net1}
N -280 -90 -130 -90 {lab=#net1}
N -280 110 300 110 {lab=GND}
N -280 30 -280 110 {lab=GND}
N 0 110 -0 130 {lab=GND}
N -130 30 -130 110 {lab=GND}
N -210 -0 -130 0 {lab=GND}
N -210 -0 -210 110 {lab=GND}
C {vsource.sym} 300 0 0 0 {name=Vds value="1 AC 1" savecurrent=false}
C {isource.sym} -280 0 2 0 {name=Iin value=50u}
C {gnd.sym} 0 130 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 110 0 0 0 {name=M1
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -110 0 0 1 {name=M2
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/code.sym} -590 40 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {simulator_commands_shown.sym} -660 -270 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.CONTROL
OP
DC Vds 0 1.8 0.05
PLOT abs (vds#branch)
AC DEC 100 100 1000
PLOT '1/vm(vds#branch)'
.ENDC


"}
