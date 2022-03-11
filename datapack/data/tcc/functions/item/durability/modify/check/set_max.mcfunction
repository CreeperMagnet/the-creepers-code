############################################################
# Prevents an overflow past the maximum durability value
############################################################

execute store result score #temp_0 tcc.dummy run data get storage tcc:storage root.temp.item.tag.tcc.durability[0] 1
execute store result score #temp_1 tcc.dummy run data get storage tcc:storage root.temp.item.tag.tcc.durability[1] 1
scoreboard players operation #temp_0 tcc.dummy -= #temp_1 tcc.dummy
execute if score #item_durability_change tcc.dummy < #temp_0 tcc.dummy run scoreboard players operation #item_durability_change tcc.dummy = #temp_0 tcc.dummy
