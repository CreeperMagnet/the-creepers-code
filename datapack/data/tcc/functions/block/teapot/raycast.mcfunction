############################################################
# Description: Finds the block you are looking at
# Creator: CreeperMagnet_
############################################################

scoreboard players add @s[scores={tcc.dummy=..499}] tcc.dummy 1
execute if entity @s[scores={tcc.dummy=..499}] unless block ^ ^ ^0.01 #tcc:raycast_ignore positioned ^ ^ ^0.01 align xyz unless entity @e[tag=global.ignore,type=villager,dx=0,dz=0,dy=1] if block ~ ~ ~ #minecraft:campfires if block ~ ~1 ~ #tcc:air run function tcc:block/teapot/place
execute if entity @s[scores={tcc.dummy=..499}] if block ^ ^ ^0.01 #tcc:raycast_ignore positioned ^ ^ ^0.01 run function tcc:block/teapot/raycast
