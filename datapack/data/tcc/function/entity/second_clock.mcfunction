# Functions to run off of every tcc entity every second

## Trader Entity Functions
execute if entity @s[type=minecraft:wandering_trader,tag=tcc.trader_entity] run function tcc:entity/trader_entity/second_clock

## All blocks
execute if entity @s[tag=tcc.block] run function tcc:block/second_clock

## Recovery Compass Items
execute if entity @s[type=minecraft:item,tag=tcc.recovery_compass_item,nbt=!{Age:-32767s}] run function tcc:item/recovery_compass/unglow

## Brewing Stuff
execute if entity @s[type=minecraft:marker,tag=tcc.brewing_stand] if block ~ ~ ~ minecraft:brewing_stand{Items:[{components:{"minecraft:custom_data":{tcc:{}}}}]} run function tcc:block/brewing_stand/brewing/second_clock