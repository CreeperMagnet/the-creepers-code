############################################################
# Duplicates a normal sherd
############################################################

execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:3b,tag:{tcc:{id:"pottery_sherd"}}}] run return 0
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:11b,tag:{tcc:{id:"pottery_sherd"}}}] run return 0
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:13b,tag:{tcc:{id:"pottery_sherd"}}}] run return 0
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:21b,tag:{tcc:{id:"pottery_sherd"}}}] run return 0

item replace block ~ ~ ~ container.15 from block ~ ~ ~ container.12
scoreboard players set @s tcc.dummy 0
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:3b}] run scoreboard players add @s tcc.dummy 1
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:11b}] run scoreboard players add @s tcc.dummy 1
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:13b}] run scoreboard players add @s tcc.dummy 1
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:21b}] run scoreboard players add @s tcc.dummy 1
execute store result block ~ ~ ~ Items[{Slot:15b}].Count int 1 run scoreboard players get @s tcc.dummy

tag @s add tcc.pottery_table.assembled_output