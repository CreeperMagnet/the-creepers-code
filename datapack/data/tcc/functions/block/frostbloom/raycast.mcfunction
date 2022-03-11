############################################################
# Finds the block you are looking at
############################################################

execute unless block ^ ^ ^0.01 #tcc:frostbloom/ignore positioned ^ ^ ^0.01 if block ~ ~ ~ #minecraft:dirt if block ~ ~1 ~ snow[layers=1] run function tcc:block/frostbloom/place
execute if entity @s[distance=..5] if block ^ ^ ^0.01 #tcc:frostbloom/ignore positioned ^ ^ ^0.01 run function tcc:block/frostbloom/raycast
