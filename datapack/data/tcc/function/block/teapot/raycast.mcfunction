# Finds the block you are looking at

execute positioned ^ ^ ^0.01 unless predicate tcc:location_check/raycast_ignore align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=smithed.block,distance=..0.5] if predicate tcc:location_check/teapot_valid run return run function tcc:block/teapot/place
scoreboard players remove @s tcc.dummy 1
execute if score @s tcc.dummy matches 1.. positioned ^ ^ ^0.01 if predicate tcc:location_check/raycast_ignore run function tcc:block/teapot/raycast