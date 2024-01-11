# Spawns invalids in item form

data remove storage tcc:storage root.temp.macro_input
execute store result storage tcc:storage root.temp.macro_input.x_motion double 0.001 run random value -100..100
execute store result storage tcc:storage root.temp.macro_input.y_motion double 0.01 run random value 20..30
execute store result storage tcc:storage root.temp.macro_input.z_motion double 0.001 run random value -100..100
data modify storage tcc:storage root.temp.macro_input.item set from storage tcc:storage root.temp.sherds[0]
function tcc:block/decorated_pot/break/summon_sherds/summon_item_macro with storage tcc:storage root.temp.macro_input
data remove storage tcc:storage root.temp.sherds[0]
execute if data storage tcc:storage root.temp.sherds[0] run function tcc:block/decorated_pot/break/summon_sherds/spawn_loop