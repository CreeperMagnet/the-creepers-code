# Finds the block you are looking at

execute positioned ^ ^ ^0.01 unless predicate tcc:block/frostbloom/raycast_ignore positioned ^ ^ ^-0.1 rotated ~ 0 align xyz positioned ~0.5 ~ ~0.5 if predicate tcc:block/frostbloom/air if block ~ ~-1 ~ #minecraft:dirt run return run function tcc:block/frostbloom/place
execute if entity @s[distance=..5] positioned ^ ^ ^0.01 if predicate tcc:block/frostbloom/raycast_ignore positioned ^ ^ ^0.01 run function tcc:block/frostbloom/raycast