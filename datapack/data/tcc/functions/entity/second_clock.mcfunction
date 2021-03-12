############################################################
# Description: Functions to run off of every tcc entity every second
# Creator: CreeperMagnet_
############################################################

## Trader Entity Functions
execute if entity @s[type=wandering_trader,tag=tcc.trader_entity] run function tcc:entity/trader_entity/second_clock

## All blocks
execute if entity @s[tag=tcc.block] run function tcc:block/second_clock
