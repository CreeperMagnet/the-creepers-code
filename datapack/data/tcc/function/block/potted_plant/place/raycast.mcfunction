# Raycast for putting plant into pot

execute positioned ^ ^ ^0.01 if block ~ ~ ~ minecraft:flower_pot align xyz positioned ~0.5 ~ ~0.5 unless entity @e[distance=..0.5,tag=smithed.block,tag=!tcc.flower_pot] run return run function tcc:block/potted_plant/place/summon
scoreboard players remove @s tcc.dummy 1
execute if score @s tcc.dummy matches 1.. positioned ^ ^ ^0.01 if predicate tcc:location_check/raycast_ignore run function tcc:block/potted_plant/place/raycast