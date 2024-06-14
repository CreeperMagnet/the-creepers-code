# Decorates a nether pot

execute if data storage tcc:temp root.barrel_data[1][{Slot:3b}] unless data storage tcc:temp root.barrel_data[1][{Slot:3b,components:{"minecraft:custom_data":{tcc:{id:"pottery_sherd",type:"nether_brick"}}}}] run return 0
execute if data storage tcc:temp root.barrel_data[1][{Slot:11b}] unless data storage tcc:temp root.barrel_data[1][{Slot:11b,components:{"minecraft:custom_data":{tcc:{id:"pottery_sherd",type:"nether_brick"}}}}] run return 0
execute if data storage tcc:temp root.barrel_data[1][{Slot:13b}] unless data storage tcc:temp root.barrel_data[1][{Slot:13b,components:{"minecraft:custom_data":{tcc:{id:"pottery_sherd",type:"nether_brick"}}}}] run return 0
execute if data storage tcc:temp root.barrel_data[1][{Slot:21b}] unless data storage tcc:temp root.barrel_data[1][{Slot:21b,components:{"minecraft:custom_data":{tcc:{id:"pottery_sherd",type:"nether_brick"}}}}] run return 0

function tcc:block/pottery_table/crafting/create_output/decorate_pot/custom_pot_cmd
execute store result storage tcc:temp root.item.components."minecraft:custom_model_data" int 1 run scoreboard players get @s tcc.dummy

data modify storage tcc:temp root.item.components."minecraft:lore" prepend value '{"translate":"item.minecraft.nether_brick","color":"gray","italic":false}'
data modify storage tcc:temp root.item.components."minecraft:lore" prepend value '{"translate":"item.minecraft.nether_brick","color":"gray","italic":false}'
data modify storage tcc:temp root.item.components."minecraft:lore" prepend value '{"translate":"item.minecraft.nether_brick","color":"gray","italic":false}'
data modify storage tcc:temp root.item.components."minecraft:lore" prepend value '{"translate":"item.minecraft.nether_brick","color":"gray","italic":false}'

execute if data storage tcc:temp root.barrel_data[1][{Slot:13b}] run function tcc:block/pottery_table/crafting/create_output/decorate_pot/nether_brick/lore/main_macro {"slot":"13","lore_line":"0"}
execute if data storage tcc:temp root.barrel_data[1][{Slot:21b}] run function tcc:block/pottery_table/crafting/create_output/decorate_pot/nether_brick/lore/main_macro {"slot":"21","lore_line":"1"}
execute if data storage tcc:temp root.barrel_data[1][{Slot:3b}] run function tcc:block/pottery_table/crafting/create_output/decorate_pot/nether_brick/lore/main_macro {"slot":"3","lore_line":"2"}
execute if data storage tcc:temp root.barrel_data[1][{Slot:11b}] run function tcc:block/pottery_table/crafting/create_output/decorate_pot/nether_brick/lore/main_macro {"slot":"11","lore_line":"3"}
execute if data storage tcc:temp root.barrel_data[1][{Slot:3b}] if data storage tcc:temp root.barrel_data[1][{Slot:11b}] if data storage tcc:temp root.barrel_data[1][{Slot:13b}] if data storage tcc:temp root.barrel_data[1][{Slot:21b}] run data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc.trigger_advancement set value 1b

data modify storage tcc:temp root.item.components."minecraft:lore" prepend value '{"text":""}'

data modify block ~ ~ ~ Items[{Slot:15b}] set from storage tcc:temp root.item
tag @s add tcc.pottery_table.assembled_output