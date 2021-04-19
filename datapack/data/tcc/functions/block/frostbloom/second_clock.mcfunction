############################################################
# Description: Commands to run off frostblooms every second
# Creator: CreeperMagnet_
############################################################

## Particles
particle minecraft:falling_dust minecraft:snow ~ ~4 ~ 1 0.4 1 0 32 normal

## Hurting blazes
execute if predicate tcc:chance/three_fifths as @e[type=#tcc:frostbloom_affected,distance=..3,tag=!global.ignore] run function tcc:block/frostbloom/mob_effect
