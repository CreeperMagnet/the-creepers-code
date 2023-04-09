############################################################
# Finds the block you are looking at
############################################################

execute unless block ^ ^ ^0.01 #tcc:raycast_ignore positioned ^ ^ ^0.01 align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=smithed.block,distance=..0.5] if block ~ ~ ~ #minecraft:campfires if block ~ ~1 ~ #tcc:air run function tcc:block/teapot/place
execute if entity @s[distance=..7] if block ^ ^ ^0.01 #tcc:raycast_ignore positioned ^ ^ ^0.01 run function tcc:block/teapot/raycast
