############################################################
# Description: Functions to run every single tick
# Creator: CreeperMagnet_
############################################################

## Entity Ticking
execute as @e[sort=arbitrary,tag=tcc.entity] at @s run function tcc:entity/tick

## Player Tick
execute as @a[sort=arbitrary] at @s run function tcc:entity/player/tick/main
