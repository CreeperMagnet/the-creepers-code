############################################################
# Description: Commands to run every second
# Creator: CreeperMagnet_
############################################################

## Area Effect Clouds
execute as @e[type=area_effect_cloud,sort=arbitrary,tag=!global.ignore,tag=!tcc.aec.no_potion,tag=!tcc.entity] at @s align xyz positioned ~-2 ~ ~-2 if entity @e[type=item,dx=4,dz=4,dy=1,sort=arbitrary,tag=!global.ignore,predicate=tcc:unpotioned_item] run function tcc:entity/area_effect_cloud/discern_item

## Vanilla entity modification
execute as @e[type=#tcc:needs_processing,tag=!global.ignore,tag=!tcc.modified_vanilla_entity,sort=arbitrary] at @s run function tcc:entity/processing/main

## Villager Trade Edits
execute as @e[type=villager,tag=!global.ignore,sort=arbitrary,nbt={Offers:{Recipes:[{buy:{tag:{tcc:{id:"cycler_trade"}}},uses:0}]}}] at @s run function tcc:entity/villager/increment_cycling
execute as @e[type=villager,tag=tcc.modified_vanilla_entity,sort=arbitrary,predicate=tcc:modify_villager] unless data entity @s Offers.Recipes run tag @s remove tcc.modified_vanilla_entity

## Peculiar Berries
execute as @e[type=chicken,sort=arbitrary,tag=tcc.peculiar_chicken] at @s run function tcc:item/peculiar_berries/lay_test

## Player second_clock
execute as @a[sort=arbitrary] at @s run function tcc:entity/player/second_clock

## Entity second_clock
execute as @e[tag=tcc.entity,sort=arbitrary] at @s run function tcc:entity/second_clock

## Witch trader check
execute as @e[type=witch,tag=!global.ignore,sort=arbitrary] at @s run function tcc:entity/witch/second_clock

schedule function tcc:technical/second_clock 1s replace
