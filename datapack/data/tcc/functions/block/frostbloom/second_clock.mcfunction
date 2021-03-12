############################################################
# Description: Commands to run off frostblooms every second
# Creator: CreeperMagnet_
############################################################

## Particles
particle minecraft:falling_dust minecraft:snow ~ ~4 ~ 1 0.4 1 0 32 normal

## Hurting blazes
execute if predicate tcc:chance/three_fifths run effect give @e[type=blaze,distance=..3,sort=arbitrary,tag=!global.ignore] minecraft:instant_damage

## Healing golems
execute if predicate tcc:chance/three_fifths run effect give @e[type=snow_golem,distance=..3,sort=arbitrary,tag=!global.ignore] minecraft:instant_health
