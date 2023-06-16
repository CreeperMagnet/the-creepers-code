############################################################
# Commands for when the barrel's contents update
############################################################

## Move the barrel data
data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.barrel_data set from entity @s item.tag.stored_barrel_data
#
### Clearing the input
data modify storage tcc:storage root.temp.barrel_data_output set from storage tcc:storage root.temp.barrel_data[0][{Slot:15b}]
execute store success score @s tcc.dummy run data modify storage tcc:storage root.temp.barrel_data_output set from block ~ ~ ~ Items[{Slot:15b}]
execute unless data block ~ ~ ~ Items[{Slot:15b}] run scoreboard players set @s tcc.dummy 1
execute if entity @s[scores={tcc.dummy=1..},tag=tcc.pottery_table.assembled_output,tag=tcc.pottery_table.open] run function tcc:block/pottery_table/crafting/clear_input
#
## If there are any items in improper slots, manage them
execute positioned ~ ~0.5 ~ if predicate tcc:block/pottery_table/has_invalid_items run function tcc:block/pottery_table/crafting/manage_invalids/move
#
## Slots 3, 11, 12, 13, and 21 need to be checked for exporting
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:3b}] run function tcc:block/pottery_table/crafting/check_slot_validity/3/check
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:11b}] run function tcc:block/pottery_table/crafting/check_slot_validity/11/check
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:12b}] run function tcc:block/pottery_table/crafting/check_slot_validity/12/check
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:13b}] run function tcc:block/pottery_table/crafting/check_slot_validity/13/check
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:21b}] run function tcc:block/pottery_table/crafting/check_slot_validity/21/check
#
## Recipe checks
execute if data storage tcc:storage root.temp.barrel_data[1][{}] run data remove block ~ ~ ~ Items[{Slot:15b}]
execute if data storage tcc:storage root.temp.barrel_data[1][{}] run tag @s remove tcc.pottery_table.assembled_output
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:12b}] run function tcc:block/pottery_table/crafting/create_output/check_for_inputs
#
## Set the tags at the end
data modify entity @s item.tag.stored_barrel_data[1] set from block ~ ~ ~ Items
