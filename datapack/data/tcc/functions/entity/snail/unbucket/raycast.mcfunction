############################################################
# Description: Finds the block you are looking at
# Creator: CreeperMagnet_
############################################################

scoreboard players add @s[scores={tcc.dummy=..499}] tcc.dummy 1
execute if entity @s[scores={tcc.dummy=..499}] unless block ^ ^ ^0.01 #tcc:raycast_ignore unless block ^ ^ ^0.01 #cauldrons align xyz if block ~ ~ ~ #tcc:raycast_ignore if block ~ ~1 ~ #tcc:snail_survivable run function tcc:entity/snail/unbucket/summon
execute if entity @s[scores={tcc.dummy=..499}] unless block ^ ^ ^0.01 #tcc:raycast_ignore if block ^ ^ ^0.01 #cauldrons positioned ^ ^ ^0.01 align xyz if block ~ ~1 ~ #tcc:snail_survivable if block ~ ~2 ~ #tcc:snail_survivable positioned ~ ~0.25 ~ run function tcc:entity/snail/unbucket/summon
execute if entity @s[scores={tcc.dummy=..499}] if block ^ ^ ^0.01 #tcc:raycast_ignore positioned ^ ^ ^0.01 run function tcc:entity/snail/unbucket/raycast
