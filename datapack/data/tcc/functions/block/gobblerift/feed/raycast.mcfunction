############################################################
# Description: Finds the gobblerift you're looking at
# Creator: CreeperMagnet_
############################################################

scoreboard players add @s[scores={tcc.dummy=..499}] tcc.dummy 1
execute if entity @s[scores={tcc.dummy=..499}] positioned ~-0.01 ~-0.99 ~-0.01 as @e[dx=0,dz=0,dy=0,type=wandering_trader,tag=tcc.gobblerift.hungry] positioned ~-0.99 ~0.99 ~-0.99 if entity @s[dx=0,dz=0,dy=0] run tag @p[advancements={tcc:technical/block/gobblerift/feed=true}] add tcc.tag
execute if entity @s[scores={tcc.dummy=..499},tag=!tcc.tag] positioned ^ ^ ^0.01 run function tcc:block/gobblerift/feed/raycast
execute if entity @s[scores={tcc.dummy=..499},tag=tcc.tag] run function tcc:block/gobblerift/feed/player_finish