execute store success score #recurse tcc.dummy positioned ^ ^ ^0.01 if block ~ ~ ~ minecraft:flower_pot align xyz positioned ~0.5 ~ ~0.5 unless entity @e[distance=..0.5,tag=smithed.block] run function tcc:block/potted_plant/place/summon
execute if score #recurse tcc.dummy matches 1 run return 0
execute if entity @s[distance=..5] if block ^ ^ ^0.01 #tcc:raycast_ignore positioned ^ ^ ^0.01 run function tcc:block/potted_plant/place/raycast
