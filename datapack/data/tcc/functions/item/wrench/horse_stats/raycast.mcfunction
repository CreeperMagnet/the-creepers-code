############################################################
# Description: Finds the teapot you're looking at
# Creator: CreeperMagnet_
############################################################
tag @s add tcc.wrench_raycaster
scoreboard players add @s[scores={tcc.dummy=..499}] tcc.dummy 1
execute if entity @s[scores={tcc.dummy=..499}] positioned ~-0.01 ~-0.99 ~-0.01 as @e[dx=0,dz=0,dy=0,type=#tcc:horses,tag=!global.ignore] positioned ~-0.99 ~0.99 ~-0.99 if entity @s[dx=0,dz=0,dy=0] run tag @p[tag=tcc.wrench_raycaster] add tcc.tag
execute if entity @s[scores={tcc.dummy=..499},tag=!tcc.tag] positioned ^ ^ ^0.01 run function tcc:item/wrench/horse_stats/raycast
execute if entity @s[scores={tcc.dummy=..499},tag=tcc.tag] positioned ~-0.01 ~-0.99 ~-0.01 as @e[dx=0,dz=0,dy=0,type=#tcc:horses,tag=!global.ignore] positioned ~-0.95 ~0.95 ~-0.95 at @s[dx=0,dz=0,dy=0] run function tcc:item/wrench/horse_stats/title
tag @s remove tcc.wrench_raycaster
tag @s remove tcc.tag