# Summons the witch and kills the marker

spreadplayers ~ ~ 10 48 false @s
spreadplayers ~ ~ 10 48 false @s[distance=..10]
spreadplayers ~ ~ 10 48 false @s[distance=..10]
execute at @s positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
execute at @s positioned ~ ~-1 ~ if predicate tcc:location/in_water run kill @s 
execute at @s positioned ~ ~-1 ~ if predicate tcc:location/in_water run return 0
execute at @s summon minecraft:wandering_trader run function tcc:entity/wandering_witch/initiate_trader
execute at @s positioned ~0.1 ~ ~ summon minecraft:trader_llama run function tcc:entity/wandering_witch/initiate_llama
execute at @s if predicate tcc:random_chance/0.5 positioned ~-0.1 ~ ~ summon minecraft:trader_llama run function tcc:entity/wandering_witch/initiate_llama
execute at @s run particle minecraft:witch ~ ~ ~ 0.5 1 0.5 0 100 force
kill @s