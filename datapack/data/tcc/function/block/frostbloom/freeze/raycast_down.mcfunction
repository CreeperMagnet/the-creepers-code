# Raycasts down until hits a non-air block

execute if block ~ ~-1 ~ #tcc:frostbloom/affected positioned ~ ~-1 ~ run function tcc:block/frostbloom/freeze/set_block
execute if block ~ ~-1 ~ #tcc:opaque run function tcc:block/frostbloom/freeze/set_block
execute if block ~ ~-1 ~ minecraft:snow[layers=8] run function tcc:block/frostbloom/freeze/set_block
execute if block ~ ~-1 ~ #tcc:frostbloom/ignore positioned ~ ~-1 ~ run function tcc:block/frostbloom/freeze/raycast_down