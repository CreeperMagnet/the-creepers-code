# Decorates a nether pot

execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:3b}] unless data storage tcc:storage root.temp.barrel_data[1][{Slot:3b,tag:{tcc:{id:"pottery_sherd",type:"nether_brick"}}}] run return 0
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:11b}] unless data storage tcc:storage root.temp.barrel_data[1][{Slot:11b,tag:{tcc:{id:"pottery_sherd",type:"nether_brick"}}}] run return 0
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:13b}] unless data storage tcc:storage root.temp.barrel_data[1][{Slot:13b,tag:{tcc:{id:"pottery_sherd",type:"nether_brick"}}}] run return 0
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:21b}] unless data storage tcc:storage root.temp.barrel_data[1][{Slot:21b,tag:{tcc:{id:"pottery_sherd",type:"nether_brick"}}}] run return 0

function tcc:block/pottery_table/crafting/create_output/decorate_pot/custom_pot_cmd
execute store result storage tcc:storage root.temp.item.tag.CustomModelData int 1 run scoreboard players get @s tcc.dummy

data modify storage tcc:storage root.temp.item.tag.display.Lore prepend value '{"translate":"item.minecraft.nether_brick","color":"gray","italic":false}'
data modify storage tcc:storage root.temp.item.tag.display.Lore prepend value '{"translate":"item.minecraft.nether_brick","color":"gray","italic":false}'
data modify storage tcc:storage root.temp.item.tag.display.Lore prepend value '{"translate":"item.minecraft.nether_brick","color":"gray","italic":false}'
data modify storage tcc:storage root.temp.item.tag.display.Lore prepend value '{"translate":"item.minecraft.nether_brick","color":"gray","italic":false}'

execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:13b}] run function tcc:block/pottery_table/crafting/create_output/decorate_pot/nether_brick/lore/main_macro {"slot":"13","lore_line":"0"}
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:21b}] run function tcc:block/pottery_table/crafting/create_output/decorate_pot/nether_brick/lore/main_macro {"slot":"21","lore_line":"1"}
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:3b}] run function tcc:block/pottery_table/crafting/create_output/decorate_pot/nether_brick/lore/main_macro {"slot":"3","lore_line":"2"}
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:11b}] run function tcc:block/pottery_table/crafting/create_output/decorate_pot/nether_brick/lore/main_macro {"slot":"11","lore_line":"3"}
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:3b}] if data storage tcc:storage root.temp.barrel_data[1][{Slot:11b}] if data storage tcc:storage root.temp.barrel_data[1][{Slot:13b}] if data storage tcc:storage root.temp.barrel_data[1][{Slot:21b}] run data modify storage tcc:storage root.temp.item.tag.tcc.trigger_advancement set value 1b

data modify storage tcc:storage root.temp.item.tag.display.Lore prepend value '{"text":""}'

data modify block ~ ~ ~ Items[{Slot:15b}] set from storage tcc:storage root.temp.item
tag @s add tcc.pottery_table.assembled_output