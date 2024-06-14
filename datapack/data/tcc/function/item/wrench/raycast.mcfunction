# Finds the block you are looking at

execute positioned ^ ^ ^0.01 unless predicate tcc:location_check/raycast_ignore align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=smithed.block,distance=..0.7] if predicate tcc:multiple_condition_types/valid_wrench_rotation run return run function tcc:item/wrench/rotate/main
scoreboard players remove @s tcc.dummy 1
execute if score @s tcc.dummy matches 1.. positioned ^ ^ ^0.01 if predicate tcc:location_check/raycast_ignore run function tcc:item/wrench/raycast
