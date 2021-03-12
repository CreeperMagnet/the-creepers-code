############################################################
# Description: Finds the gobblerift you're looking at
# Creator: CreeperMagnet_
############################################################

tag @s add tcc.gobblerift_raycaster
scoreboard players add @s[scores={tcc.dummy=..499}] tcc.dummy 1
execute if entity @s[scores={tcc.dummy=..499}] positioned ~-0.01 ~-0.99 ~-0.01 as @e[dx=0,dz=0,dy=0,type=wandering_trader,tag=tcc.gobblerift.juice_ready] positioned ~-0.99 ~0.99 ~-0.99 if entity @s[dx=0,dz=0,dy=0] run tag @p[tag=tcc.gobblerift_raycaster] add tcc.tag
execute if entity @s[scores={tcc.dummy=..499},tag=!tcc.tag] positioned ^ ^ ^0.01 run function tcc:block/gobblerift/juice/raycast
execute if entity @s[scores={tcc.dummy=..499},tag=tcc.tag] run function tcc:block/gobblerift/juice/player_finish
tag @s remove tcc.gobblerift_raycaster
