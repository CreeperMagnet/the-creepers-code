############################################################
# Description: Commands to run every second
# Creator: CreeperMagnet_
############################################################

## Gamerule check
execute store result score #difficulty tcc.dummy run difficulty

## Area Effect Clouds
execute as @e[type=area_effect_cloud,tag=!global.ignore,tag=!tcc.aec.no_potion,tag=!tcc.entity] at @s align xyz positioned ~-2 ~ ~-2 if entity @e[type=item,dx=4,dz=4,dy=1,tag=!global.ignore,predicate=tcc:unpotioned_item] run function tcc:entity/area_effect_cloud/discern_item

## Vanilla entity modification
execute as @e[type=#tcc:needs_processing,tag=!global.ignore,tag=!tcc.modified_vanilla_entity] at @s run function tcc:entity/processing/main

## Villager Trade Edits
execute as @e[type=villager,tag=tcc.modified_vanilla_entity] unless data entity @s Offers.Recipes run tag @s remove tcc.modified_vanilla_entity

## Peculiar Berries
execute as @e[type=chicken,tag=tcc.peculiar_chicken] at @s run function tcc:item/peculiar_berries/lay_test

## Player second_clock
execute as @a at @s run function tcc:entity/player/second_clock

## Entity second_clock
execute as @e[tag=tcc.entity] at @s run function tcc:entity/second_clock

## Witch trader check
execute as @e[type=witch,tag=!global.ignore,tag=!global.ignore.kill,predicate=!tcc:in_vehicle] at @s run function tcc:entity/witch/second_clock

## Villager bed exploding
execute as @e[type=villager,predicate=tcc:in_nether_or_end] if data entity @s SleepingX at @s run function tcc:entity/villager/blow_up

## Ocean monument rework code
execute as @e[type=marker,tag=tcc.monument] at @s positioned ~ 0 ~ run function tcc:worldgen/ocean_monument_edits/modify/check_chunkloading

schedule function tcc:technical/second_clock 1s replace
