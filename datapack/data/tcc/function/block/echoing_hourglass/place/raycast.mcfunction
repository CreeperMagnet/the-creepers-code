# Finds the block you are looking at

execute positioned ^ ^ ^0.01 unless predicate tcc:location_check/raycast_ignore if predicate tcc:location_check/replaceable rotated ~ 0 align xyz positioned ~0.5 ~ ~0.5 if predicate tcc:location_check/replaceable unless entity @e[distance=..0.5,tag=smithed.block] run return run function tcc:block/echoing_hourglass/place/summon
execute positioned ^ ^ ^0.01 unless predicate tcc:location_check/raycast_ignore positioned ^ ^ ^-0.1 rotated ~ 0 align xyz positioned ~0.5 ~ ~0.5 if predicate tcc:location_check/replaceable unless entity @e[distance=..0.5,tag=smithed.block] run return run function tcc:block/echoing_hourglass/place/summon

scoreboard players remove @s tcc.dummy 1
execute if score @s tcc.dummy matches 1.. positioned ^ ^ ^0.01 if predicate tcc:location_check/raycast_ignore run function tcc:block/echoing_hourglass/place/raycast