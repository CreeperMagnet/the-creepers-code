############################################################
# Commands to run as the new witch
############################################################

tag @s remove tcc.witch.newly_spawned
data modify entity @s {} merge from storage tcc:storage root.temp.witch_data
data modify entity @s ArmorItems[1].tag.trader_data set from storage tcc:storage root.temp.trader_data
execute if data storage tcc:storage root.temp.witch_data{hurt:1b} run effect give @s instant_damage 1 31 true
execute if data storage tcc:storage root.temp.witch_data{angry:1b} run scoreboard players set @s tcc.dummy2 120
tp @s ~ ~ ~ ~ ~