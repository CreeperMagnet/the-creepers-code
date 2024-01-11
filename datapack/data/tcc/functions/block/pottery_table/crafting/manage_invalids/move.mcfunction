# Moves items if they are put into invalid slots

# Move the item slots around
data modify storage tcc:storage root.temp.stored_item set from entity @s item
data modify entity @s item set from block ~ ~ ~ Items[{Slot:0b}]
tag @s remove tcc.tag
execute if predicate tcc:block/pottery_table/item_types/sherds run tag @s add tcc.tag
execute if entity @s[tag=tcc.tag] unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:13b}]} run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 13b
execute if entity @s[tag=tcc.tag] if block ~ ~ ~ minecraft:barrel{Items:[{Slot:13b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:21b}]} run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 21b
execute if entity @s[tag=tcc.tag] if block ~ ~ ~ minecraft:barrel{Items:[{Slot:13b}]} if block ~ ~ ~ minecraft:barrel{Items:[{Slot:21b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b}]} run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 11b
execute if entity @s[tag=tcc.tag] if block ~ ~ ~ minecraft:barrel{Items:[{Slot:13b}]} if block ~ ~ ~ minecraft:barrel{Items:[{Slot:21b}]} if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:3b}]} run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 3b
execute if entity @s[tag=tcc.tag] if block ~ ~ ~ minecraft:barrel{Items:[{Slot:13b}]} if block ~ ~ ~ minecraft:barrel{Items:[{Slot:21b}]} if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b}]} if block ~ ~ ~ minecraft:barrel{Items:[{Slot:3b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:12b}]} run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 12b
tag @s remove tcc.tag

execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:0b,id:"minecraft:decorated_pot"}]} unless data block ~ ~ ~ Items[{Slot:0b}].tag.BlockEntityTag.sherds unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:12b}]} run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 12b
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:0b,tag:{tcc:{id:"decorated_pot",raw_pot:1b}}}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:12b}]} run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 12b
data modify entity @s item set from storage tcc:storage root.temp.stored_item

# If things are still invalid, just throw them out instead
execute if predicate tcc:block/pottery_table/has_invalid_items run function tcc:block/pottery_table/crafting/manage_invalids/export

# Make sure the storage is updated properly
data modify storage tcc:storage root.temp.barrel_data[1] set from block ~ ~ ~ Items
