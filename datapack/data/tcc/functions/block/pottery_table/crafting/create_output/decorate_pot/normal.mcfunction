############################################################
# Decorates a normal pot
############################################################

execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:3b,tag:{tcc:{id:"pottery_sherd"}}}] run return 0
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:11b,tag:{tcc:{id:"pottery_sherd"}}}] run return 0
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:13b,tag:{tcc:{id:"pottery_sherd"}}}] run return 0
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:21b,tag:{tcc:{id:"pottery_sherd"}}}] run return 0

item replace block ~ ~ ~ container.15 from block ~ ~ ~ container.12
data modify block ~ ~ ~ Items[{Slot:15b}].Count set value 1b
data modify storage tcc:storage root.temp.item set from block ~ ~ ~ Items[{Slot:15b}]
execute unless data storage tcc:storage root.temp.item.tag.BlockEntityTag.sherds run data modify storage tcc:storage root.temp.item.tag.BlockEntityTag.sherds set value ["minecraft:brick","minecraft:brick","minecraft:brick","minecraft:brick"]
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:3b}] run data modify storage tcc:storage root.temp.item.tag.BlockEntityTag.sherds[2] set from storage tcc:storage root.temp.barrel_data[1][{Slot:3b}].id
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:11b}] run data modify storage tcc:storage root.temp.item.tag.BlockEntityTag.sherds[0] set from storage tcc:storage root.temp.barrel_data[1][{Slot:11b}].id
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:13b}] run data modify storage tcc:storage root.temp.item.tag.BlockEntityTag.sherds[3] set from storage tcc:storage root.temp.barrel_data[1][{Slot:13b}].id
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:21b}] run data modify storage tcc:storage root.temp.item.tag.BlockEntityTag.sherds[1] set from storage tcc:storage root.temp.barrel_data[1][{Slot:21b}].id
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:3b}] if data storage tcc:storage root.temp.barrel_data[1][{Slot:11b}] if data storage tcc:storage root.temp.barrel_data[1][{Slot:13b}] if data storage tcc:storage root.temp.barrel_data[1][{Slot:21b}] run data modify storage tcc:storage root.temp.item.tag.tcc.trigger_advancement set value 1b

data modify block ~ ~ ~ Items[{Slot:15b}] set from storage tcc:storage root.temp.item
tag @s add tcc.pottery_table.assembled_output