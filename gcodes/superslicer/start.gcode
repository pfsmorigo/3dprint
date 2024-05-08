M851 X-31.8 Y-40.5 ; CR-Touch probe offset from nozzle
M206 X7 Y-10 ; Fine tune to align the table
G90 ; use absolute coordinates
M83 ; extruder relative mode
M140 S{first_layer_bed_temperature[initial_extruder]} ; set final bed temp
M104 S150 ; set temporary nozzle temp to prevent oozing during homing and auto bed leveling
G4 S10 ; allow partial nozzle warmup
G28 ; home all axis
G29 ; auto bed levelling
G1 Z50 F240
G1 X2 Y10 F3000
M104 S{first_layer_temperature[initial_extruder]+extruder_temperature_offset[initial_extruder]} ; set final nozzle temp
M190 S{first_layer_bed_temperature[initial_extruder]} ; wait for bed temp to stabilize
M109 S{first_layer_temperature[initial_extruder]+extruder_temperature_offset[initial_extruder]} ; wait for nozzle temp to stabilize
G1 Z0.28 F240
G92 E0
G1 Y140 E10 F1500 ; prime the nozzle
G1 X2.3 F5000
G92 E0
G1 Y10 E10 F1200 ; prime the nozzle
G92 E0
G1 Z2.0 F3000 ;Move Z Axis up
