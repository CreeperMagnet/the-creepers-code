# Updates the light level for newly placed custom blocks

execute if block ~ ~ ~ #tcc:opaque run function tcc:block/update_light/main
tag @s remove tcc.newly_placed_update_light
