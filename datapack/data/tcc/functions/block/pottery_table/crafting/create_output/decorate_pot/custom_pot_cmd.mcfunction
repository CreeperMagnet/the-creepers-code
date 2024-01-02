############################################################
# Common code for decorating a custom pot
############################################################

item replace block ~ ~ ~ container.15 from block ~ ~ ~ container.12
data modify block ~ ~ ~ Items[{Slot:15b}].Count set value 1b
data modify storage tcc:storage root.temp.item set from block ~ ~ ~ Items[{Slot:15b}]
data modify storage tcc:storage root.temp.item.tag.tcc.raw_pot set value 0b
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:3b}] run data modify storage tcc:storage root.temp.item.tag.tcc.sherds[2] set from storage tcc:storage root.temp.barrel_data[1][{Slot:3b}]
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:11b}] run data modify storage tcc:storage root.temp.item.tag.tcc.sherds[0] set from storage tcc:storage root.temp.barrel_data[1][{Slot:11b}]
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:13b}] run data modify storage tcc:storage root.temp.item.tag.tcc.sherds[3] set from storage tcc:storage root.temp.barrel_data[1][{Slot:13b}]
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:21b}] run data modify storage tcc:storage root.temp.item.tag.tcc.sherds[1] set from storage tcc:storage root.temp.barrel_data[1][{Slot:21b}]
data modify storage tcc:storage root.temp.item.tag.tcc.sherds[].Count set value 1b
data remove storage tcc:storage root.temp.item.tag.tcc.sherds[].Slot

#13 ---> custommodeldata 10
#21 ---> custommodeldata 32
scoreboard players set @s tcc.dummy 330000
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:13b}] store result score #temp_0 tcc.dummy run data get storage tcc:storage root.temp.barrel_data[1][{Slot:13b}].tag.CustomModelData
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:13b}] run scoreboard players remove #temp_0 tcc.dummy 330000
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:13b}] run scoreboard players operation @s tcc.dummy += #temp_0 tcc.dummy
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:21b}] store result score #temp_0 tcc.dummy run data get storage tcc:storage root.temp.barrel_data[1][{Slot:21b}].tag.CustomModelData 100
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:21b}] run scoreboard players remove #temp_0 tcc.dummy 33000000
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:21b}] run scoreboard players operation @s tcc.dummy += #temp_0 tcc.dummy