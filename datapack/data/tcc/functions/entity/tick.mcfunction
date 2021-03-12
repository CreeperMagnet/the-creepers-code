############################################################
# Description: Functions to run off of every tcc entity every single tick
# Creator: CreeperMagnet_
############################################################

## Trader Entities
execute if entity @s[type=wandering_trader,tag=tcc.trader_entity] run function tcc:entity/trader_entity/tick

## Boomerangs
execute if entity @s[type=armor_stand,tag=tcc.boomerang] run function tcc:item/boomerang/tick

## Iceologer Ice
execute if entity @s[type=minecraft:falling_block,tag=tcc.falling_ice] run function tcc:entity/iceologer/ice/tick

## All Blocks
execute if entity @s[tag=tcc.block] run function tcc:block/tick
