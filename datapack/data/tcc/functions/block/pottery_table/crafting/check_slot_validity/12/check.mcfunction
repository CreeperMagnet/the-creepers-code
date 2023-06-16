############################################################
# Commands to check if a slot contains valid items
############################################################

tag @s remove tcc.tag
data modify storage tcc:storage root.temp.stored_item set from entity @s item
data modify entity @s item set from block ~ ~ ~ Items[{Slot:12b}]
execute if predicate tcc:block/pottery_table/item_types/sherds run tag @s add tcc.tag
execute if block ~ ~ ~ barrel{Items:[{Slot:12b,id:"minecraft:decorated_pot"}]} unless data block ~ ~ ~ Items[{Slot:12b}].tag.BlockEntityTag.sherds run tag @s add tcc.tag
execute if block ~ ~ ~ barrel{Items:[{Slot:12b,id:"minecraft:decorated_pot"}]} if data block ~ ~ ~ Items[{Slot:12b}].tag.BlockEntityTag.sherds run function tcc:block/pottery_table/crafting/check_slot_validity/12/check_vanilla_pot
execute if block ~ ~ ~ barrel{Items:[{Slot:12b,tag:{tcc:{id:"decorated_pot",raw_pot:1b}}}]} run tag @s add tcc.tag

data modify entity @s item set from storage tcc:storage root.temp.stored_item
execute if entity @s[tag=!tcc.tag] run function tcc:block/pottery_table/crafting/check_slot_validity/12/export
tag @s remove tcc.tag