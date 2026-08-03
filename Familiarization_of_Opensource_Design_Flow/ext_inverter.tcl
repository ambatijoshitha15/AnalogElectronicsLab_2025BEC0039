crashbackups stop
drc off
load /foss/designs/inverter.mag
select top cell
extract path /foss/designs
extract no capacitance
extract no coupling
extract no resistance
extract no length
extract all
ext2spice lvs
ext2spice -p /foss/designs -o /foss/designs/inverter.ext.spc
quit -noprompt
