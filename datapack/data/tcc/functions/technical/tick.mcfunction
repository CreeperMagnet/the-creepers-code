############################################################
# Description: Functions to run every single tick
# Creator: CreeperMagnet_
############################################################

## Entity Ticking
execute as @e[tag=tcc.entity] at @s run function tcc:entity/tick

## Player Tick
execute as @a at @s run function tcc:entity/player/tick/main
