G90 ; use absolute coordinates
M83 ; extruder relative mode
M104 S150 ; set temporary nozzle temp to prevent oozing during homing and auto bed leveling
M140 S{first_layer_bed_temperature[0]} ; set final bed temp
G4 S30 ; allow partial nozzle warmup
G28 ; home all axis
G29 ; auto bed levelling
G1 Z50 F240
G1 X2.0 Y10 F3000
M104 S{first_layer_temperature[0]} ; set final nozzle temp
M190 S{first_layer_bed_temperature[0]} ; wait for bed temp to stabilize
M109 S{first_layer_temperature[0]} ; wait for nozzle temp to stabilize
G1 Z0.28 F240
G92 E0
G1 X2.0 Y140 E10 F1500 ; prime the nozzle
G1 X2.3 Y140 F5000
G92 E0
G1 X2.3 Y10 E10 F1200 ; prime the nozzle
G92 E0
