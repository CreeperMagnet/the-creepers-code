# Duplicates a nether brick sherd

execute if data storage tcc:temp root.barrel_data[1][{Slot:3b}] unless data storage tcc:temp root.barrel_data[1][{Slot:3b,components:{"minecraft:custom_data":{tcc:{id:"pottery_sherd",type:"nether_brick"}}}}] run return 0
execute if data storage tcc:temp root.barrel_data[1][{Slot:11b}] unless data storage tcc:temp root.barrel_data[1][{Slot:11b,components:{"minecraft:custom_data":{tcc:{id:"pottery_sherd",type:"nether_brick"}}}}] run return 0
execute if data storage tcc:temp root.barrel_data[1][{Slot:13b}] unless data storage tcc:temp root.barrel_data[1][{Slot:13b,components:{"minecraft:custom_data":{tcc:{id:"pottery_sherd",type:"nether_brick"}}}}] run return 0
execute if data storage tcc:temp root.barrel_data[1][{Slot:21b}] unless data storage tcc:temp root.barrel_data[1][{Slot:21b,components:{"minecraft:custom_data":{tcc:{id:"pottery_sherd",type:"nether_brick"}}}}] run return 0

item replace block ~ ~ ~ container.15 from block ~ ~ ~ container.12
scoreboard players set @s tcc.dummy 0
execute if data storage tcc:temp root.barrel_data[1][{Slot:3b}] run scoreboard players add @s tcc.dummy 1
execute if data storage tcc:temp root.barrel_data[1][{Slot:11b}] run scoreboard players add @s tcc.dummy 1
execute if data storage tcc:temp root.barrel_data[1][{Slot:13b}] run scoreboard players add @s tcc.dummy 1
execute if data storage tcc:temp root.barrel_data[1][{Slot:21b}] run scoreboard players add @s tcc.dummy 1
execute store result block ~ ~ ~ Items[{Slot:15b}].count int 1 run scoreboard players get @s tcc.dummy

tag @s add tcc.pottery_table.assembled_output