# Raycast for putting plant into pot

execute positioned ^ ^ ^0.01 if block ~ ~ ~ minecraft:flower_pot align xyz positioned ~0.5 ~ ~0.5 unless entity @e[distance=..0.5,tag=smithed.block] run return run function tcc:block/potted_plant/place/summon
execute if entity @s[distance=..5] if block ^ ^ ^0.01 #tcc:raycast_ignore positioned ^ ^ ^0.01 run function tcc:block/potted_plant/place/raycast
