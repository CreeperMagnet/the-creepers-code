############################################################
# Decorates a prismarine pot
############################################################

execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:3b}] unless data storage tcc:storage root.temp.barrel_data[1][{Slot:3b,tag:{tcc:{id:"pottery_sherd",type:"prismarine"}}}] run return 0
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:11b}] unless data storage tcc:storage root.temp.barrel_data[1][{Slot:11b,tag:{tcc:{id:"pottery_sherd",type:"prismarine"}}}] run return 0
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:13b}] unless data storage tcc:storage root.temp.barrel_data[1][{Slot:13b,tag:{tcc:{id:"pottery_sherd",type:"prismarine"}}}] run return 0
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:21b}] unless data storage tcc:storage root.temp.barrel_data[1][{Slot:21b,tag:{tcc:{id:"pottery_sherd",type:"prismarine"}}}] run return 0

function tcc:block/pottery_table/crafting/create_output/decorate_pot/custom_pot_cmd
execute if score @s tcc.dummy matches ..330099 run scoreboard players add @s tcc.dummy 1600
scoreboard players operation #temp_0 tcc.dummy = @s tcc.dummy
scoreboard players operation #temp_0 tcc.dummy %= #100 tcc.dummy
execute if score #temp_0 tcc.dummy matches 0 run scoreboard players add @s tcc.dummy 16

execute store result storage tcc:storage root.temp.item.tag.CustomModelData int 1 run scoreboard players get @s tcc.dummy

data modify storage tcc:storage root.temp.item.tag.display.Lore prepend value '{"translate":"item.minecraft.prismarine_shard","color":"gray","italic":false}'
data modify storage tcc:storage root.temp.item.tag.display.Lore prepend value '{"translate":"item.minecraft.prismarine_shard","color":"gray","italic":false}'
data modify storage tcc:storage root.temp.item.tag.display.Lore prepend value '{"translate":"item.minecraft.prismarine_shard","color":"gray","italic":false}'
data modify storage tcc:storage root.temp.item.tag.display.Lore prepend value '{"translate":"item.minecraft.prismarine_shard","color":"gray","italic":false}'

execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:13b}] run function tcc:block/pottery_table/crafting/create_output/decorate_pot/prismarine/lore/0
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:21b}] run function tcc:block/pottery_table/crafting/create_output/decorate_pot/prismarine/lore/1
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:3b}] run function tcc:block/pottery_table/crafting/create_output/decorate_pot/prismarine/lore/2
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:11b}] run function tcc:block/pottery_table/crafting/create_output/decorate_pot/prismarine/lore/3
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:3b}] if data storage tcc:storage root.temp.barrel_data[1][{Slot:11b}] if data storage tcc:storage root.temp.barrel_data[1][{Slot:13b}] if data storage tcc:storage root.temp.barrel_data[1][{Slot:21b}] run data modify storage tcc:storage root.temp.item.tag.tcc.trigger_advancement set value 1b

data modify storage tcc:storage root.temp.item.tag.display.Lore prepend value '{"text":""}'

data modify block ~ ~ ~ Items[{Slot:15b}] set from storage tcc:storage root.temp.item
tag @s add tcc.pottery_table.assembled_output