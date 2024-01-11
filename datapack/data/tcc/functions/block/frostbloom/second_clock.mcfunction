# Commands to run off frostblooms every second

## Particles
execute if block ~ ~1 ~ minecraft:light run particle minecraft:falling_dust minecraft:snow ~ ~4 ~ 1 0.4 1 0 32 normal

## Mob effects
execute positioned ~-2.5 ~-1 ~-2.5 as @e[type=#tcc:frostbloom_affected,dx=4,dy=4,dz=4,tag=!smithed.strict] at @s run function tcc:block/frostbloom/mob_effect