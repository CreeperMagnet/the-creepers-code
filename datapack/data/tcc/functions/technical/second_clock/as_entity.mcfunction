############################################################
# Commands to run every second as the proper selected entity types
############################################################

## Vanilla entity modification
execute if entity @s[type=#tcc:technical/needs_processing,tag=!smithed.entity,tag=!tcc.modified_vanilla_entity] run function tcc:entity/processing/main
execute if entity @s[type=minecraft:villager,tag=!smithed.entity,tag=!tcc.modified_vanilla_entity,nbt={VillagerData:{profession:"minecraft:cartographer",level:3}}] run function tcc:entity/processing/cartographer

## Entity second_clock
execute if entity @s[tag=tcc.second_clock] run function tcc:entity/second_clock

## Witch trader check
execute if entity @s[type=witch,tag=!smithed.entity,predicate=!tcc:entity/in_vehicle] run function tcc:entity/witch/second_clock_witch