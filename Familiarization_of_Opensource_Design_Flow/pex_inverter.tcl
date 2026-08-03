crashbackups stop
drc off
load inverter.mag
select top cell
flatten inverter_flat
load inverter_flat
cellname delete inverter
cellname rename inverter_flat inverter
select top cell
extract path /foss/designs
ext2spice lvs
extresist tolerance 10
extract do resistance
extract do unique
extract all
ext2spice extresist on
ext2spice cthresh 0.01
ext2spice -p /foss/designs -o /foss/designs/inverter.pex.spice.tmp
quit -noprompt
