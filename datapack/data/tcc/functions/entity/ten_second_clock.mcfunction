############################################################
# Functions to run off of every tcc entity every ten seconds
############################################################

## Wandering witch
execute if entity @s[type=minecraft:wandering_trader,tag=tcc.wandering_witch] run function tcc:entity/wandering_witch/ten_second_clock

## Trident refreshing
execute if entity @s[type=minecraft:trident,tag=tcc.trident] run data modify entity @s life set value -32767s

## All blocks
execute if entity @s[tag=tcc.block] run function tcc:block/ten_second_clock

## Brewing stand marker
execute if entity @s[type=minecraft:marker,tag=tcc.brewing_stand] unless block ~ ~ ~ minecraft:brewing_stand run kill @s

## Mansion water cleanup
execute if entity @s[type=minecraft:armor_stand,tag=tcc.mansion_cleanup] run function tcc:postgen/mansion_cleanup/main

## Trader Llamas
execute if entity @s[type=minecraft:trader_llama] run function tcc:entity/trader_llama/ten_second_clock

## Glowing recovery compass items
execute if entity @s[type=minecraft:item,tag=tcc.recovery_compass_item] run data modify entity @s Age set value -32767s

## Zombified Archaeologists
execute if entity @s[type=minecraft:zombie_villager,tag=tcc.zombified_archaeologist] run function tcc:entity/archaeologist/zombie/ten_second_clock