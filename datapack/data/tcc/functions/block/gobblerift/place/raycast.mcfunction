############################################################
# Finds the block you are looking at
############################################################

execute unless block ^ ^ ^0.01 #tcc:raycast_ignore positioned ^ ^ ^0.01 positioned ~ ~1 ~ if predicate tcc:block/gobblerift_valid align xyz positioned ~0.5 ~ ~0.5 unless entity @e[distance=..0.5,tag=smithed.block] run function tcc:block/gobblerift/place/summon
execute if entity @s[distance=..5] if block ^ ^ ^0.01 #tcc:raycast_ignore positioned ^ ^ ^0.01 run function tcc:block/gobblerift/place/raycast
