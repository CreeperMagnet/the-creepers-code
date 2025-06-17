# Commands for when the barrel's contents update

tag @s remove tcc.pottery_table.update_on_next_open
data remove storage tcc:temp root

# If the output slot has changed, clear the input
data modify storage tcc:temp root.barrel_data_output set from entity @s data.tcc.old_barrel_items[{Slot:15b}]
execute store success score @s tcc.dummy run data modify storage tcc:temp root.barrel_data_output set from block ~ ~ ~ Items[{Slot:15b}]

# The slots changed if we went from having an output to NOT having an output
execute unless data block ~ ~ ~ Items[{Slot:15b}] if data storage tcc:temp root.barrel_data_output run scoreboard players set @s tcc.dummy 1

execute if entity @s[scores={tcc.dummy=1..},tag=tcc.pottery_table.assembled_output] run function tcc:block/pottery_table/crafting/clear_input

# If there are any items in improper slots, manage them
execute if predicate tcc:location_check/pottery_table_with_invalid_items run function tcc:block/pottery_table/crafting/manage_invalids/move

# Slots 3, 11, 12, 13, and 21 need to be checked for exporting
execute if items block ~ ~ ~ container.3 * run function tcc:block/pottery_table/crafting/check_slot_validity/check_sherd_slot_macro {"slot":3}
execute if items block ~ ~ ~ container.11 * run function tcc:block/pottery_table/crafting/check_slot_validity/check_sherd_slot_macro {"slot":11}
execute if items block ~ ~ ~ container.12 * run function tcc:block/pottery_table/crafting/check_slot_validity/check_middle_slot
execute if items block ~ ~ ~ container.13 * run function tcc:block/pottery_table/crafting/check_slot_validity/check_sherd_slot_macro {"slot":13}
execute if items block ~ ~ ~ container.21 * run function tcc:block/pottery_table/crafting/check_slot_validity/check_sherd_slot_macro {"slot":21}

# Recipe checks
data remove block ~ ~ ~ Items[{Slot:15b}]
tag @s remove tcc.pottery_table.assembled_output
execute if items block ~ ~ ~ container.12 * run function tcc:block/pottery_table/crafting/create_output/check_recipe

# Update your saved data so these changes don't count as player-driven updates
data modify entity @s data.tcc.current_barrel_items set from block ~ ~ ~ Items