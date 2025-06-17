v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -180 -0 -90 -0 {lab=vg}
N -180 -0 -180 30 {lab=vg}
N -180 90 -180 160 {lab=GND}
N -180 160 -0 160 {lab=GND}
N -0 160 140 160 {lab=GND}
N 140 90 140 160 {lab=GND}
N -50 30 -50 160 {lab=GND}
N -50 -70 -50 -30 {lab=vd}
N -50 -70 140 -70 {lab=vd}
N 140 -70 140 30 {lab=vd}
N -50 -0 20 0 {lab=GND}
N 20 -0 20 60 {lab=GND}
N -50 60 20 60 {lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -70 0 0 0 {name=M1
L=1
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {vsource.sym} -180 60 0 0 {name=Vgs value=1 savecurrent=false}
C {vsource.sym} 140 60 0 0 {name=Vds value=0 savecurrent=false}
C {gnd.sym} -50 160 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -140 0 0 0 {name=p1 sig_type=std_logic lab=vg}
C {lab_wire.sym} 50 -70 0 0 {name=p2 sig_type=std_logic lab=vd}
C {simulator_commands_shown.sym} -510 -190 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.control
op
DC Vds 0 1.8 0.1 vgs 0.4 1.0 0.1
plot vds#branch
plot abs(vds#branch)
plot sqrt(2*abs(vds#branch))
.endc
"}
C {devices/code.sym} -410 110 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
