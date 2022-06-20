############################################################
# Functions to run off of every tcc entity every second
############################################################

## Trader Entity Functions
execute if entity @s[type=wandering_trader,tag=tcc.trader_entity] run function tcc:entity/trader_entity/second_clock

## Piglin Trading Reset
execute if entity @s[type=piglin] unless data entity @s HandItems[{id:"minecraft:gold_ingot"}] run function tcc:entity/piglin/trading/reset_score

## All blocks
execute if entity @s[tag=tcc.block] run function tcc:block/second_clock

## Brewing Stuff
execute if entity @s[type=marker,tag=tcc.brewing_stand] if block ~ ~ ~ minecraft:brewing_stand{Items:[{tag:{tcc:{}}}]} run function tcc:block/brewing_stand/brewing/second_clock