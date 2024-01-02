# This function runs as the item display

data remove storage tcc:storage root.temp.macro_input
data modify storage tcc:storage root.temp.macro_input.item set from entity @s item.tag.tcc.item

execute store result storage tcc:storage root.temp.macro_input.x double 0.01 run random value -5..5
execute store result storage tcc:storage root.temp.macro_input.y double 0.01 run random value 25..27
execute store result storage tcc:storage root.temp.macro_input.z double 0.01 run random value -5..5

function tcc:technical/macros/spawn_item_motion with storage tcc:storage root.temp.macro_input

