############################################################
# Commands for when the barrel's contents update
############################################################

# Move the barrel data
data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.barrel_data set from entity @s ArmorItems[3].tag.tcc.stored_barrel_data

# Clearing the input
data modify storage tcc:storage root.temp.barrel_data_output set from storage tcc:storage root.temp.barrel_data[0][{Slot:4b}]
execute store success score @s tcc.dummy run data modify storage tcc:storage root.temp.barrel_data_output set from block ~ ~ ~ Items[{Slot:4b}]
execute unless data block ~ ~ ~ Items[{Slot:4b}] run scoreboard players set @s tcc.dummy 1
execute if entity @s[scores={tcc.dummy=1..},tag=tcc.jewelry_table.assembled_output,tag=tcc.jewelry_table.open] run function tcc:block/jewelry_table/crafting/clear_input

# If there are any items in improper slots, manage them
execute if entity @s[predicate=tcc:block/jewelry_table/has_invalid_items] run function tcc:block/jewelry_table/crafting/manage_invalids/move

# Slots 2, 6, and 22 need to be checked for exporting
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:2b}] run function tcc:block/jewelry_table/crafting/check_slot_validity/2/check
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:6b}] run function tcc:block/jewelry_table/crafting/check_slot_validity/6/check
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:22b}] run function tcc:block/jewelry_table/crafting/check_slot_validity/22/check

# Recipe checks
execute if data storage tcc:storage root.temp.barrel_data[1][{}] run data remove block ~ ~ ~ Items[{Slot:4b}]
execute if data storage tcc:storage root.temp.barrel_data[1][{}] run tag @s remove tcc.jewelry_table.assembled_output
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:2b}] if data storage tcc:storage root.temp.barrel_data[1][{Slot:6b}] if data storage tcc:storage root.temp.barrel_data[1][{Slot:22b}] run function tcc:block/jewelry_table/crafting/create_output/check_dust_count

# Set the tags at the end
data modify entity @s ArmorItems[3].tag.tcc.stored_barrel_data[1] set from block ~ ~ ~ Items
