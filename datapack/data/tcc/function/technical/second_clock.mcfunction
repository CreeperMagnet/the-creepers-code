# Commands to run every second

# Store difficulty so that other places can use it
execute store result score #difficulty tcc.dummy run difficulty

# Put all prevent aggro mobs on the proper team
team join smithed.prevent_aggression @e[type=#tcc:prevent_aggression,tag=!smithed.entity]
team leave @e[type=minecraft:vindicator,name=Johnny,team=smithed.prevent_aggression]

# Vanilla entity modification

## Pillager Modifications
execute as @e[type=minecraft:pillager,tag=!tcc.modified_vanilla_entity,tag=!smithed.entity] at @s run function tcc:entity/pillager/process

## Enchanter Effect Particles
execute as @e[type=#tcc:enchanter_affected,predicate=tcc:entity_properties/is_affected_by_enchanter] at @s run particle minecraft:enchant ~ ~2 ~ 0.2 0.1 0.2 1 2 normal

## Snail Spawning
execute as @e[type=minecraft:pig,tag=!tcc.modified_vanilla_entity,tag=!smithed.entity] at @s run function tcc:entity/pig/process

## Geomancer Spawning
execute as @e[type=minecraft:witch,tag=!tcc.modified_vanilla_entity,tag=!smithed.entity] at @s run function tcc:entity/witch/process

## Zombie Modifications
execute as @e[type=minecraft:zombie,tag=!tcc.modified_vanilla_entity,tag=!smithed.entity] at @s run function tcc:entity/zombie/process

## Husk Modifications
execute as @e[type=minecraft:husk,tag=!tcc.modified_vanilla_entity,tag=!smithed.entity] at @s run function tcc:entity/husk/process

## Cartographer Trades
execute as @e[type=minecraft:villager,tag=!tcc.modified_vanilla_entity,nbt={VillagerData:{profession:"minecraft:cartographer",level:2}},tag=!smithed.entity] at @s run function tcc:entity/cartographer/process

## Coral Drowned & Drowned with Swordfish
execute as @e[type=minecraft:drowned,tag=!tcc.modified_vanilla_entity,tag=!smithed.entity] at @s run function tcc:entity/drowned/process

## Wandering Trader Rework
execute as @e[type=minecraft:wandering_trader,tag=!tcc.modified_vanilla_entity,tag=!smithed.entity] at @s run function tcc:entity/wandering_trader/process

## Zombie Villager Modifications
execute as @e[type=minecraft:zombie_villager,tag=!tcc.has_been_zombified] at @s run function tcc:entity/villager_zombification/second_clock

# Other Entities

## Fishing bobbers
execute as @e[type=minecraft:fishing_bobber] at @s if predicate tcc:location_check/in_water run function tcc:entity/fishing_bobber/check_treasure

## Loyalty tridents returning from the void
execute as @e[type=minecraft:trident] at @s if predicate tcc:location_check/in_void run data modify entity @s DealtDamage set value 1b

## Trader Entity Functions
execute as @e[type=minecraft:wandering_trader,tag=tcc.trader_entity] at @s run function tcc:entity/trader_entity/second_clock

## All blocks
execute as @e[type=minecraft:item_display,tag=tcc.block] at @s run function tcc:block/second_clock

## Recovery Compass Items
execute as @e[type=minecraft:item,tag=tcc.recovery_compass_item] at @s run function tcc:item/recovery_compass/unglow

## Brewing Stuff
execute as @e[type=minecraft:marker,tag=tcc.brewing_stand] at @s run function tcc:block/brewing_stand/second_clock

## Players
execute as @a at @s run function tcc:entity/player/second_clock



## Reschedule
schedule function tcc:technical/second_clock 1s replace
