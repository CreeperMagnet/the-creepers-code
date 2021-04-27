############################################################
# Description: Finds the block you are looking at
# Creator: CreeperMagnet_
############################################################

scoreboard players add @s[scores={tcc.dummy=..499}] tcc.dummy 1
execute if entity @s[scores={tcc.dummy=..499}] unless block ^ ^ ^0.01 #tcc:raycast_ignore positioned ^ ^ ^0.01 align xyz if block ~ ~1 ~ #tcc:raycast_ignore if block ~ ~2 ~ #tcc:raycast_ignore positioned ~ ~1 ~ run function tcc:entity/snail/unbucket/summon
execute if entity @s[scores={tcc.dummy=..499}] if block ^ ^ ^0.01 #tcc:raycast_ignore positioned ^ ^ ^0.01 run function tcc:entity/snail/unbucket/raycast
