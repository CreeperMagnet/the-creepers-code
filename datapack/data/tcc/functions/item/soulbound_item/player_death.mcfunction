############################################################
# Functions to run when a player dies with a soulbound item
############################################################

execute store result score #temp tcc.dummy run gamerule keepInventory
execute if score #temp tcc.dummy matches 0 run function tcc:item/soulbound_item/find_dropped_items
advancement revoke @s only tcc:technical/entity_hurt_player/player_dies_with_soulbound_item