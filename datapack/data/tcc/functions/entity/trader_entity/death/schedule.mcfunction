############################################################
# Description: Schedules stuff to execute off of loot item
# Creator: CreeperMagnet_
############################################################

schedule function tcc:entity/trader_entity/death/find_item 1t append
advancement revoke @s only tcc:technical/entity/kill_trader_entity
