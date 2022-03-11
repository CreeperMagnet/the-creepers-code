############################################################
# Commands to run off frostblooms every second
############################################################

## Particles
particle minecraft:falling_dust minecraft:snow ~ ~4 ~ 1 0.4 1 0 32 normal

## Mob effects
execute if predicate tcc:chance/three_fifths as @e[type=#tcc:frostbloom_affected,distance=..3,tag=!smithed.strict] run function tcc:block/frostbloom/mob_effect
