v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 130 -190 130 -150 {lab=Vin}
N 70 -190 70 -150 {lab=Vdd}
N 330 -280 330 -240 {lab=Vdd}
N 220 -190 260 -190 {lab=Vin}
N 430 -190 470 -190 {lab=Vout}
C {inverter.sym} 380 -190 0 0 {name=x1}
C {vsource.sym} 70 -120 0 0 {name=Vdd value=1.8 savecurrent=false}
C {vsource.sym} 130 -120 0 0 {name=Vin value=0 savecurrent=false}
C {gnd.sym} 70 -90 0 0 {name=l1 lab=GND}
C {gnd.sym} 130 -90 0 0 {name=l2 lab=GND}
C {gnd.sym} 330 -140 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 130 -190 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 220 -190 0 0 {name=p3 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 70 -190 0 0 {name=p4 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 330 -280 0 0 {name=p1 sig_type=std_logic lab=Vdd}
C {opin.sym} 470 -190 0 0 {name=p5 lab=Vout}
C {devices/code.sym} 50 -350 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {devices/code_shown.sym} 590 -280 0 0 {name=NGSPICE
only_toplevel=true
value="
.include /foss/designs/inverter.pex.spice
.option savecurrents
.control
save all
dc Vin 0 1.8 0.1
plot v(Vin) v(Vout)
.endc
" }
