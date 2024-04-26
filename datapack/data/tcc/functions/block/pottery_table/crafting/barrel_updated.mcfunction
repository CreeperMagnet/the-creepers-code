# Commands for when the barrel's contents update

# Move the barrel data
data remove storage tcc:temp root
data modify storage tcc:temp root.barrel_data set from entity @s item.components."minecraft:custom_data".stored_barrel_data

# If the output slot has changed, clear the input
data modify storage tcc:temp root.barrel_data_output set from storage tcc:temp root.barrel_data[0][{Slot:15b}]
execute store success score @s tcc.dummy run data modify storage tcc:temp root.barrel_data_output set from block ~ ~ ~ Items[{Slot:15b}]
execute unless data block ~ ~ ~ Items[{Slot:15b}] run scoreboard players set @s tcc.dummy 1
execute if entity @s[scores={tcc.dummy=1..},tag=tcc.pottery_table.assembled_output,tag=tcc.pottery_table.open] run function tcc:block/pottery_table/crafting/clear_input

# If there are any items in improper slots, manage them
execute positioned ~ ~0.5 ~ if predicate tcc:location_check/pottery_table_with_invalid_items run function tcc:block/pottery_table/crafting/manage_invalids/move

# Slots 3, 11, 12, 13, and 21 need to be checked for exporting
execute if data storage tcc:temp root.barrel_data[1][{Slot:3b}] run function tcc:block/pottery_table/crafting/check_slot_validity/check_sherd_slot_macro {"slot":3}
execute if data storage tcc:temp root.barrel_data[1][{Slot:11b}] run function tcc:block/pottery_table/crafting/check_slot_validity/check_sherd_slot_macro {"slot":11}
execute if data storage tcc:temp root.barrel_data[1][{Slot:12b}] run function tcc:block/pottery_table/crafting/check_slot_validity/check_middle_slot
execute if data storage tcc:temp root.barrel_data[1][{Slot:13b}] run function tcc:block/pottery_table/crafting/check_slot_validity/check_sherd_slot_macro {"slot":13}
execute if data storage tcc:temp root.barrel_data[1][{Slot:21b}] run function tcc:block/pottery_table/crafting/check_slot_validity/check_sherd_slot_macro {"slot":21}

# Recipe checks
execute if data storage tcc:temp root.barrel_data[1][{}] run data remove block ~ ~ ~ Items[{Slot:15b}]
execute if data storage tcc:temp root.barrel_data[1][{}] run tag @s remove tcc.pottery_table.assembled_output
execute if data storage tcc:temp root.barrel_data[1][{Slot:12b}] run function tcc:block/pottery_table/crafting/create_output/check_recipe

# Set the tags at the end
data modify entity @s item.components."minecraft:custom_data".stored_barrel_data[1] set from block ~ ~ ~ Items
