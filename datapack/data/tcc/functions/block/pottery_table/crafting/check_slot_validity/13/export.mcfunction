############################################################
# Exports invalid items from a slot that shouldn't have said items
############################################################

data modify storage tcc:storage root.temp.export_items set value [{}]
scoreboard players set @s tcc.dummy 1
data modify storage tcc:storage root.temp.export_items[0] set from block ~ ~ ~ Items[{Slot:13b}]
data remove block ~ ~ ~ Items[{Slot:13b}]
data modify storage tcc:storage root.temp.barrel_data[1] set from block ~ ~ ~ Items
function tcc:block/pottery_table/crafting/manage_invalids/spawn_loop
