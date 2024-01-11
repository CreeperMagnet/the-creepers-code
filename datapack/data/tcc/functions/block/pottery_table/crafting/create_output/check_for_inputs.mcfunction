# Checks recipes inputted into the pottery table

tag @s remove tcc.tag
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:3b}] run tag @s add tcc.tag
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:11b}] run tag @s add tcc.tag
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:13b}] run tag @s add tcc.tag
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:21b}] run tag @s add tcc.tag
execute if entity @s[tag=tcc.tag] run function tcc:block/pottery_table/crafting/create_output/check_recipe
tag @s remove tcc.tag