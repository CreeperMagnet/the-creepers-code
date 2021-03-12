############################################################
# Description: Finds the block you are looking at
# Creator: CreeperMagnet_
############################################################

scoreboard players add @s[scores={tcc.dummy=..499}] tcc.dummy 1
execute if entity @s[scores={tcc.dummy=..499}] unless block ^ ^ ^0.01 #tcc:frostbloom_ignore positioned ^ ^ ^0.01 if block ~ ~ ~ minecraft:grass_block[snowy=true] if block ~ ~1 ~ snow[layers=1] run function tcc:block/frostbloom/place
execute if entity @s[scores={tcc.dummy=..499}] if block ^ ^ ^0.01 #tcc:frostbloom_ignore positioned ^ ^ ^0.01 run function tcc:block/frostbloom/raycast
