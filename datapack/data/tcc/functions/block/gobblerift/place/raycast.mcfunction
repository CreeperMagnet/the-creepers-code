# Finds the block you are looking at

execute unless block ^ ^ ^0.01 #tcc:raycast_ignore rotated ~ 0 align xyz positioned ~0.5 ~ ~0.5 if predicate tcc:block/gobblerift_valid unless entity @e[distance=..0.5,tag=smithed.block] run return run function tcc:block/gobblerift/place/summon
execute if entity @s[distance=..5] positioned ^ ^ ^0.01 run function tcc:block/gobblerift/place/raycast
