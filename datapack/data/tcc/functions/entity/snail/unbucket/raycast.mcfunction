############################################################
# Finds the block you are looking at
############################################################

execute unless block ^ ^ ^0.01 #tcc:raycast_ignore unless block ^ ^ ^0.01 #cauldrons align xyz if block ~ ~ ~ #tcc:raycast_ignore if block ~ ~1 ~ #tcc:snail_survivable unless predicate tcc:entity/snail_damage_areas run function tcc:entity/snail/unbucket/summon
execute unless block ^ ^ ^0.01 #tcc:raycast_ignore if block ^ ^ ^0.01 #cauldrons positioned ^ ^ ^0.01 align xyz if block ~ ~1 ~ #tcc:snail_survivable if block ~ ~2 ~ #tcc:snail_survivable positioned ~ ~0.25 ~ run function tcc:entity/snail/unbucket/summon
execute if entity @s[distance=..5] if block ^ ^ ^0.01 #tcc:raycast_ignore positioned ^ ^ ^0.01 run function tcc:entity/snail/unbucket/raycast
