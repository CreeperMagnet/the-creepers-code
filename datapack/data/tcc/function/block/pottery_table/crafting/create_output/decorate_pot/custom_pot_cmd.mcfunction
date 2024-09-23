# Common code for decorating a custom pot

item replace block ~ ~ ~ container.15 from block ~ ~ ~ container.12
data modify block ~ ~ ~ Items[{Slot:15b}].count set value 1
data modify storage tcc:temp root.item set from block ~ ~ ~ Items[{Slot:15b}]
data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc.raw_pot set value 0b
execute if data storage tcc:temp root.barrel_data[1][{Slot:3b}] run data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc.sherds[2] set from storage tcc:temp root.barrel_data[1][{Slot:3b}]
execute if data storage tcc:temp root.barrel_data[1][{Slot:11b}] run data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc.sherds[0] set from storage tcc:temp root.barrel_data[1][{Slot:11b}]
execute if data storage tcc:temp root.barrel_data[1][{Slot:13b}] run data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc.sherds[3] set from storage tcc:temp root.barrel_data[1][{Slot:13b}]
execute if data storage tcc:temp root.barrel_data[1][{Slot:21b}] run data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc.sherds[1] set from storage tcc:temp root.barrel_data[1][{Slot:21b}]
data remove storage tcc:temp root.item.components."minecraft:custom_data".tcc.sherds[].Slot
data remove storage tcc:temp root.item.components."minecraft:custom_data".tcc.sherds[].count

#13 ---> custommodeldata 10
#21 ---> custommodeldata 32
scoreboard players set @s tcc.dummy 330000
execute if data storage tcc:temp root.barrel_data[1][{Slot:13b}] store result score #temp_0 tcc.dummy run data get storage tcc:temp root.barrel_data[1][{Slot:13b}].components."minecraft:custom_model_data"
execute if data storage tcc:temp root.barrel_data[1][{Slot:13b}] run scoreboard players remove #temp_0 tcc.dummy 330000
execute if data storage tcc:temp root.barrel_data[1][{Slot:13b}] run scoreboard players operation @s tcc.dummy += #temp_0 tcc.dummy
execute if data storage tcc:temp root.barrel_data[1][{Slot:21b}] store result score #temp_0 tcc.dummy run data get storage tcc:temp root.barrel_data[1][{Slot:21b}].components."minecraft:custom_model_data" 100
execute if data storage tcc:temp root.barrel_data[1][{Slot:21b}] run scoreboard players remove #temp_0 tcc.dummy 33000000
execute if data storage tcc:temp root.barrel_data[1][{Slot:21b}] run scoreboard players operation @s tcc.dummy += #temp_0 tcc.dummy