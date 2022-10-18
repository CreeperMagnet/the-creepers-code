############################################################
# Functions to run every single tick
############################################################

## Entity Ticking
execute as @e[type=#tcc:technical/tick,tag=tcc.tick] at @s run function tcc:entity/tick

## Player Tick
execute as @a at @s run function tcc:entity/player/tick/main

## Netherite Rings
execute as @e[type=item,tag=!tcc.modified_vanilla_entity] run function tcc:item/ring/netherite_processing
