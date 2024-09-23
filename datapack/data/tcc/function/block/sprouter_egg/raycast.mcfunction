# Finds the block you are looking at

execute positioned ~-0.01 ~-0.99 ~-0.01 as @n[dx=0,type=!#tcc:intangible,tag=!tcc.sprouter_egg_raycaster] positioned ~-0.99 ~0.99 ~-0.99 if entity @s[dx=0] run return 0

execute positioned ^ ^ ^0.01 unless predicate tcc:location_check/raycast_ignore if predicate tcc:location_check/replaceable rotated ~ 0 align xyz unless entity @n[dx=0,type=!#tcc:intangible] positioned ~0.5 ~ ~0.5 if predicate tcc:location_check/replaceable unless entity @e[distance=..0.5,tag=smithed.block] run return run function tcc:block/sprouter_egg/place
execute positioned ^ ^ ^0.01 unless predicate tcc:location_check/raycast_ignore positioned ^ ^ ^-0.1 rotated ~ 0 align xyz unless entity @n[dx=0,type=!#tcc:intangible] positioned ~0.5 ~ ~0.5 if predicate tcc:location_check/replaceable unless entity @e[distance=..0.5,tag=smithed.block] run return run function tcc:block/sprouter_egg/place

scoreboard players remove @s tcc.dummy 1
execute if score @s tcc.dummy matches 1.. positioned ^ ^ ^0.01 if predicate tcc:location_check/raycast_ignore positioned ^ ^ ^0.01 run function tcc:block/sprouter_egg/raycast