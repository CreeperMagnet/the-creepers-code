############################################################
# Colors a paintbrush
############################################################

execute if data storage tcc:storage root.temp.item{id:"minecraft:black_dye"} run clear @s[gamemode=!creative] minecraft:black_dye 1
execute if data storage tcc:storage root.temp.item{id:"minecraft:black_dye"} run data modify storage tcc:storage root.temp.custom_model_data set value 330010
execute if data storage tcc:storage root.temp.item{id:"minecraft:blue_dye"} run clear @s[gamemode=!creative] minecraft:blue_dye 1
execute if data storage tcc:storage root.temp.item{id:"minecraft:blue_dye"} run data modify storage tcc:storage root.temp.custom_model_data set value 330011
execute if data storage tcc:storage root.temp.item{id:"minecraft:brown_dye"} run clear @s[gamemode=!creative] minecraft:brown_dye 1
execute if data storage tcc:storage root.temp.item{id:"minecraft:brown_dye"} run data modify storage tcc:storage root.temp.custom_model_data set value 330012
execute if data storage tcc:storage root.temp.item{id:"minecraft:cyan_dye"} run clear @s[gamemode=!creative] minecraft:cyan_dye 1
execute if data storage tcc:storage root.temp.item{id:"minecraft:cyan_dye"} run data modify storage tcc:storage root.temp.custom_model_data set value 330013
execute if data storage tcc:storage root.temp.item{id:"minecraft:gray_dye"} run clear @s[gamemode=!creative] minecraft:gray_dye 1
execute if data storage tcc:storage root.temp.item{id:"minecraft:gray_dye"} run data modify storage tcc:storage root.temp.custom_model_data set value 330014
execute if data storage tcc:storage root.temp.item{id:"minecraft:green_dye"} run clear @s[gamemode=!creative] minecraft:green_dye 1
execute if data storage tcc:storage root.temp.item{id:"minecraft:green_dye"} run data modify storage tcc:storage root.temp.custom_model_data set value 330015
execute if data storage tcc:storage root.temp.item{id:"minecraft:light_blue_dye"} run clear @s[gamemode=!creative] minecraft:light_blue_dye 1
execute if data storage tcc:storage root.temp.item{id:"minecraft:light_blue_dye"} run data modify storage tcc:storage root.temp.custom_model_data set value 330016
execute if data storage tcc:storage root.temp.item{id:"minecraft:light_gray_dye"} run clear @s[gamemode=!creative] minecraft:light_gray_dye 1
execute if data storage tcc:storage root.temp.item{id:"minecraft:light_gray_dye"} run data modify storage tcc:storage root.temp.custom_model_data set value 330017
execute if data storage tcc:storage root.temp.item{id:"minecraft:lime_dye"} run clear @s[gamemode=!creative] minecraft:lime_dye 1
execute if data storage tcc:storage root.temp.item{id:"minecraft:lime_dye"} run data modify storage tcc:storage root.temp.custom_model_data set value 330018
execute if data storage tcc:storage root.temp.item{id:"minecraft:magenta_dye"} run clear @s[gamemode=!creative] minecraft:magenta_dye 1
execute if data storage tcc:storage root.temp.item{id:"minecraft:magenta_dye"} run data modify storage tcc:storage root.temp.custom_model_data set value 330019
execute if data storage tcc:storage root.temp.item{id:"minecraft:orange_dye"} run clear @s[gamemode=!creative] minecraft:orange_dye 1
execute if data storage tcc:storage root.temp.item{id:"minecraft:orange_dye"} run data modify storage tcc:storage root.temp.custom_model_data set value 330020
execute if data storage tcc:storage root.temp.item{id:"minecraft:pink_dye"} run clear @s[gamemode=!creative] minecraft:pink_dye 1
execute if data storage tcc:storage root.temp.item{id:"minecraft:pink_dye"} run data modify storage tcc:storage root.temp.custom_model_data set value 330021
execute if data storage tcc:storage root.temp.item{id:"minecraft:purple_dye"} run clear @s[gamemode=!creative] minecraft:purple_dye 1
execute if data storage tcc:storage root.temp.item{id:"minecraft:purple_dye"} run data modify storage tcc:storage root.temp.custom_model_data set value 330022
execute if data storage tcc:storage root.temp.item{id:"minecraft:red_dye"} run clear @s[gamemode=!creative] minecraft:red_dye 1
execute if data storage tcc:storage root.temp.item{id:"minecraft:red_dye"} run data modify storage tcc:storage root.temp.custom_model_data set value 330023
execute if data storage tcc:storage root.temp.item{id:"minecraft:white_dye"} run clear @s[gamemode=!creative] minecraft:white_dye 1
execute if data storage tcc:storage root.temp.item{id:"minecraft:white_dye"} run data modify storage tcc:storage root.temp.custom_model_data set value 330024
execute if data storage tcc:storage root.temp.item{id:"minecraft:yellow_dye"} run clear @s[gamemode=!creative] minecraft:yellow_dye 1
execute if data storage tcc:storage root.temp.item{id:"minecraft:yellow_dye"} run data modify storage tcc:storage root.temp.custom_model_data set value 330025

data remove storage tcc:storage root.temp.item
execute if entity @s[nbt={SelectedItem:{tag:{tcc:{id:"paintbrush"}}}}] run data modify storage tcc:storage root.temp.item set from entity @s SelectedItem
execute if entity @s[nbt=!{SelectedItem:{tag:{tcc:{id:"paintbrush"}}}}] run data modify storage tcc:storage root.temp.item set from entity @s Inventory[{Slot:-106b}]
data modify storage tcc:storage root.temp.item.tag.CustomModelData set from storage tcc:storage root.temp.custom_model_data
item modify entity @s[nbt={SelectedItem:{tag:{tcc:{id:"paintbrush"}}}}] weapon.mainhand tcc:copy_nbt
item modify entity @s[nbt=!{SelectedItem:{tag:{tcc:{id:"paintbrush"}}}}] weapon.offhand tcc:copy_nbt

playsound tcc:item.paintbrush.paint block @a[distance=..16]
