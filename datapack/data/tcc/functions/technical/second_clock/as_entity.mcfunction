# Commands to run every second as the proper selected entity types

## Vanilla entity modification
execute if entity @s[type=#tcc:technical/needs_processing,tag=!smithed.entity,tag=!tcc.modified_vanilla_entity] run function tcc:entity/processing/main
execute if entity @s[type=minecraft:villager,tag=!smithed.entity,tag=!tcc.modified_vanilla_entity,nbt={VillagerData:{profession:"minecraft:cartographer",level:2}}] run function tcc:entity/processing/cartographer/main

## Fishing bobbers
execute if entity @s[type=minecraft:fishing_bobber] if predicate tcc:block/in_water run function tcc:entity/fishing_bobber/check_treasure

## Loyalty tridents returning from the void
execute if entity @s[type=minecraft:trident] if predicate tcc:location/in_void run data modify entity @s DealtDamage set value 1b

## Entity second_clock
execute if entity @s[tag=tcc.second_clock] run function tcc:entity/second_clock