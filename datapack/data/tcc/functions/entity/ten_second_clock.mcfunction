############################################################
# Functions to run off of every tcc entity every ten seconds
############################################################

## Trader Entity Functions
execute if entity @s[type=minecraft:wandering_trader,tag=tcc.trader_entity] run function tcc:entity/trader_entity/ten_second_clock

## Trident refreshing
execute if entity @s[type=minecraft:trident,tag=tcc.trident] run data modify entity @s life set value -32767s

## All blocks
execute if entity @s[tag=tcc.block] run function tcc:block/ten_second_clock

## Brewing stand marker
execute if entity @s[type=minecraft:marker,tag=tcc.brewing_stand] unless block ~ ~ ~ minecraft:brewing_stand run kill @s

## Zombified Jewelers
execute if entity @s[type=minecraft:zombie_villager,tag=tcc.zombified_jeweler] run function tcc:entity/jeweler/zombie/ten_second_clock