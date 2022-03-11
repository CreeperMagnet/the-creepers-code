############################################################
# Functions to run off of every tcc entity every single tick
############################################################

## Trader Entities
execute if entity @s[type=minecraft:wandering_trader,tag=tcc.trader_entity] run function tcc:entity/trader_entity/tick

## Jeweler
execute if entity @s[type=minecraft:villager,tag=tcc.jeweler] run function tcc:entity/jeweler/tick

## Boomerangs
execute if entity @s[type=minecraft:armor_stand,tag=tcc.boomerang] run function tcc:item/boomerang/tick

## Iceologer Ice
execute if entity @s[type=minecraft:falling_block,tag=tcc.falling_ice] run function tcc:entity/iceologer/ice/tick

## All Blocks
execute if entity @s[tag=tcc.block] run function tcc:block/tick

## Brewing Stuff
execute if entity @s[type=minecraft:marker,tag=tcc.brewing_stand] run function tcc:block/brewing_stand/brewing/tick