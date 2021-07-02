############################################################
# Description: Finds the block you are looking at
# Creator: CreeperMagnet_
############################################################

scoreboard players add @s[scores={tcc.dummy=..499}] tcc.dummy 1
execute if entity @s[scores={tcc.dummy=..499}] unless block ^ ^ ^0.01 #tcc:raycast_ignore positioned ^ ^ ^0.01 positioned ~ ~1 ~ if predicate tcc:gobblerift_valid align xyz positioned ~ ~-1 ~ unless entity @e[dx=0,dz=0,dy=1,tag=tcc.gobblerift,type=wandering_trader] run function tcc:block/gobblerift/place/summon
execute if entity @s[scores={tcc.dummy=..499}] if block ^ ^ ^0.01 #tcc:raycast_ignore positioned ^ ^ ^0.01 run function tcc:block/gobblerift/place/raycast
