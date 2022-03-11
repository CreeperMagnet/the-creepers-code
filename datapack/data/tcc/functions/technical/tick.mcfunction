############################################################
# Functions to run every single tick
############################################################

## Entity Ticking
execute as @e[type=#tcc:technical/tick,tag=tcc.tick] at @s run function tcc:entity/tick

## Player Tick
execute as @a at @s run function tcc:entity/player/tick/main

## Netherite Rings
execute as @e[type=item,nbt={Item:{tag:{tcc:{ring:{metal:"minecraft:netherite"}}}}},tag=!smithed.entity] run data merge entity @s {Invulnerable:1b}
