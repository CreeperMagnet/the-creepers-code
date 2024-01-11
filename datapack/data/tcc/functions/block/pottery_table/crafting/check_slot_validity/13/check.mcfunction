# Commands to check if a slot contains valid items

data modify storage tcc:storage root.temp.stored_item set from entity @s item
data modify entity @s item set from block ~ ~ ~ Items[{Slot:13b}]
data modify storage tcc:storage root.temp.compare set value [{},{}]
data modify storage tcc:storage root.temp.compare[1] set from block ~ ~ ~ Items[{Slot:13b}]
scoreboard players set @s tcc.dummy 1
function tcc:block/pottery_table/crafting/check_slot_validity/check_vs_middle_sherd
execute if score @s tcc.dummy matches 0 run function tcc:block/pottery_table/crafting/check_slot_validity/13/export
execute unless predicate tcc:block/pottery_table/item_types/sherds run function tcc:block/pottery_table/crafting/check_slot_validity/13/export
data modify entity @s item set from storage tcc:storage root.temp.stored_item