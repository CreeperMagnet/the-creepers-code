############################################################
# Commands to run as the new trader witch
############################################################

tag @s remove tcc.witch_trader.newly_spawned
data modify entity @s {} merge from storage tcc:storage root.temp.trader_data
data modify entity @s ArmorItems[1].tag.witch_data set from storage tcc:storage root.temp.witch_data
execute unless data entity @s Offers.Recipes[{}] run function tcc:entity/witch/switch_to_trader/set_initial_trades
tp @s ~ ~ ~ ~ ~