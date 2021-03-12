############################################################
# Description: Finds the proper dye in their inventory
# Creator: CreeperMagnet_
############################################################

scoreboard players set tcc.temp_0 tcc.dummy 1000
scoreboard players reset tcc.temp_1
scoreboard players reset tcc.temp_2

execute if data entity @s Inventory[{id:"minecraft:black_dye"}] store result score tcc.temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:black_dye"}].Slot
execute if data entity @s Inventory[{id:"minecraft:black_dye",Slot:-106b}] store result score tcc.temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:black_dye",Slot:-106b}].Slot
execute if score tcc.temp_1 tcc.dummy < tcc.temp_0 tcc.dummy run scoreboard players set tcc.temp_2 tcc.dummy 1
execute if score tcc.temp_1 tcc.dummy < tcc.temp_0 tcc.dummy run scoreboard players operation tcc.temp_0 tcc.dummy = tcc.temp_1 tcc.dummy

execute if data entity @s Inventory[{id:"minecraft:blue_dye"}] store result score tcc.temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:blue_dye"}].Slot
execute if data entity @s Inventory[{id:"minecraft:blue_dye",Slot:-106b}] store result score tcc.temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:blue_dye",Slot:-106b}].Slot
execute if score tcc.temp_1 tcc.dummy < tcc.temp_0 tcc.dummy run scoreboard players set tcc.temp_2 tcc.dummy 2
execute if score tcc.temp_1 tcc.dummy < tcc.temp_0 tcc.dummy run scoreboard players operation tcc.temp_0 tcc.dummy = tcc.temp_1 tcc.dummy

execute if data entity @s Inventory[{id:"minecraft:brown_dye"}] store result score tcc.temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:brown_dye"}].Slot
execute if data entity @s Inventory[{id:"minecraft:brown_dye",Slot:-106b}] store result score tcc.temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:brown_dye",Slot:-106b}].Slot
execute if score tcc.temp_1 tcc.dummy < tcc.temp_0 tcc.dummy run scoreboard players set tcc.temp_2 tcc.dummy 3
execute if score tcc.temp_1 tcc.dummy < tcc.temp_0 tcc.dummy run scoreboard players operation tcc.temp_0 tcc.dummy = tcc.temp_1 tcc.dummy

execute if data entity @s Inventory[{id:"minecraft:cyan_dye"}] store result score tcc.temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:cyan_dye"}].Slot
execute if data entity @s Inventory[{id:"minecraft:cyan_dye",Slot:-106b}] store result score tcc.temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:cyan_dye",Slot:-106b}].Slot
execute if score tcc.temp_1 tcc.dummy < tcc.temp_0 tcc.dummy run scoreboard players set tcc.temp_2 tcc.dummy 4
execute if score tcc.temp_1 tcc.dummy < tcc.temp_0 tcc.dummy run scoreboard players operation tcc.temp_0 tcc.dummy = tcc.temp_1 tcc.dummy

execute if data entity @s Inventory[{id:"minecraft:gray_dye"}] store result score tcc.temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:gray_dye"}].Slot
execute if data entity @s Inventory[{id:"minecraft:gray_dye",Slot:-106b}] store result score tcc.temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:gray_dye",Slot:-106b}].Slot
execute if score tcc.temp_1 tcc.dummy < tcc.temp_0 tcc.dummy run scoreboard players set tcc.temp_2 tcc.dummy 5
execute if score tcc.temp_1 tcc.dummy < tcc.temp_0 tcc.dummy run scoreboard players operation tcc.temp_0 tcc.dummy = tcc.temp_1 tcc.dummy

execute if data entity @s Inventory[{id:"minecraft:green_dye"}] store result score tcc.temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:green_dye"}].Slot
execute if data entity @s Inventory[{id:"minecraft:green_dye",Slot:-106b}] store result score tcc.temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:green_dye",Slot:-106b}].Slot
execute if score tcc.temp_1 tcc.dummy < tcc.temp_0 tcc.dummy run scoreboard players set tcc.temp_2 tcc.dummy 6
execute if score tcc.temp_1 tcc.dummy < tcc.temp_0 tcc.dummy run scoreboard players operation tcc.temp_0 tcc.dummy = tcc.temp_1 tcc.dummy

execute if data entity @s Inventory[{id:"minecraft:light_blue_dye"}] store result score tcc.temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:light_blue_dye"}].Slot
execute if data entity @s Inventory[{id:"minecraft:light_blue_dye",Slot:-106b}] store result score tcc.temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:light_blue_dye",Slot:-106b}].Slot
execute if score tcc.temp_1 tcc.dummy < tcc.temp_0 tcc.dummy run scoreboard players set tcc.temp_2 tcc.dummy 7
execute if score tcc.temp_1 tcc.dummy < tcc.temp_0 tcc.dummy run scoreboard players operation tcc.temp_0 tcc.dummy = tcc.temp_1 tcc.dummy

execute if data entity @s Inventory[{id:"minecraft:light_gray_dye"}] store result score tcc.temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:light_gray_dye"}].Slot
execute if data entity @s Inventory[{id:"minecraft:light_gray_dye",Slot:-106b}] store result score tcc.temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:light_gray_dye",Slot:-106b}].Slot
execute if score tcc.temp_1 tcc.dummy < tcc.temp_0 tcc.dummy run scoreboard players set tcc.temp_2 tcc.dummy 8
execute if score tcc.temp_1 tcc.dummy < tcc.temp_0 tcc.dummy run scoreboard players operation tcc.temp_0 tcc.dummy = tcc.temp_1 tcc.dummy

execute if data entity @s Inventory[{id:"minecraft:lime_dye"}] store result score tcc.temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:lime_dye"}].Slot
execute if data entity @s Inventory[{id:"minecraft:lime_dye",Slot:-106b}] store result score tcc.temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:lime_dye",Slot:-106b}].Slot
execute if score tcc.temp_1 tcc.dummy < tcc.temp_0 tcc.dummy run scoreboard players set tcc.temp_2 tcc.dummy 9
execute if score tcc.temp_1 tcc.dummy < tcc.temp_0 tcc.dummy run scoreboard players operation tcc.temp_0 tcc.dummy = tcc.temp_1 tcc.dummy

execute if data entity @s Inventory[{id:"minecraft:magenta_dye"}] store result score tcc.temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:magenta_dye"}].Slot
execute if data entity @s Inventory[{id:"minecraft:magenta_dye",Slot:-106b}] store result score tcc.temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:magenta_dye",Slot:-106b}].Slot
execute if score tcc.temp_1 tcc.dummy < tcc.temp_0 tcc.dummy run scoreboard players set tcc.temp_2 tcc.dummy 10
execute if score tcc.temp_1 tcc.dummy < tcc.temp_0 tcc.dummy run scoreboard players operation tcc.temp_0 tcc.dummy = tcc.temp_1 tcc.dummy

execute if data entity @s Inventory[{id:"minecraft:orange_dye"}] store result score tcc.temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:orange_dye"}].Slot
execute if data entity @s Inventory[{id:"minecraft:orange_dye",Slot:-106b}] store result score tcc.temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:orange_dye",Slot:-106b}].Slot
execute if score tcc.temp_1 tcc.dummy < tcc.temp_0 tcc.dummy run scoreboard players set tcc.temp_2 tcc.dummy 11
execute if score tcc.temp_1 tcc.dummy < tcc.temp_0 tcc.dummy run scoreboard players operation tcc.temp_0 tcc.dummy = tcc.temp_1 tcc.dummy

execute if data entity @s Inventory[{id:"minecraft:pink_dye"}] store result score tcc.temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:pink_dye"}].Slot
execute if data entity @s Inventory[{id:"minecraft:pink_dye",Slot:-106b}] store result score tcc.temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:pink_dye",Slot:-106b}].Slot
execute if score tcc.temp_1 tcc.dummy < tcc.temp_0 tcc.dummy run scoreboard players set tcc.temp_2 tcc.dummy 12
execute if score tcc.temp_1 tcc.dummy < tcc.temp_0 tcc.dummy run scoreboard players operation tcc.temp_0 tcc.dummy = tcc.temp_1 tcc.dummy

execute if data entity @s Inventory[{id:"minecraft:purple_dye"}] store result score tcc.temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:purple_dye"}].Slot
execute if data entity @s Inventory[{id:"minecraft:purple_dye",Slot:-106b}] store result score tcc.temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:purple_dye",Slot:-106b}].Slot
execute if score tcc.temp_1 tcc.dummy < tcc.temp_0 tcc.dummy run scoreboard players set tcc.temp_2 tcc.dummy 13
execute if score tcc.temp_1 tcc.dummy < tcc.temp_0 tcc.dummy run scoreboard players operation tcc.temp_0 tcc.dummy = tcc.temp_1 tcc.dummy

execute if data entity @s Inventory[{id:"minecraft:red_dye"}] store result score tcc.temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:red_dye"}].Slot
execute if data entity @s Inventory[{id:"minecraft:red_dye",Slot:-106b}] store result score tcc.temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:red_dye",Slot:-106b}].Slot
execute if score tcc.temp_1 tcc.dummy < tcc.temp_0 tcc.dummy run scoreboard players set tcc.temp_2 tcc.dummy 14
execute if score tcc.temp_1 tcc.dummy < tcc.temp_0 tcc.dummy run scoreboard players operation tcc.temp_0 tcc.dummy = tcc.temp_1 tcc.dummy

execute if data entity @s Inventory[{id:"minecraft:white_dye"}] store result score tcc.temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:white_dye"}].Slot
execute if data entity @s Inventory[{id:"minecraft:white_dye",Slot:-106b}] store result score tcc.temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:white_dye",Slot:-106b}].Slot
execute if score tcc.temp_1 tcc.dummy < tcc.temp_0 tcc.dummy run scoreboard players set tcc.temp_2 tcc.dummy 15
execute if score tcc.temp_1 tcc.dummy < tcc.temp_0 tcc.dummy run scoreboard players operation tcc.temp_0 tcc.dummy = tcc.temp_1 tcc.dummy

execute if data entity @s Inventory[{id:"minecraft:yellow_dye"}] store result score tcc.temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:yellow_dye"}].Slot
execute if data entity @s Inventory[{id:"minecraft:yellow_dye",Slot:-106b}] store result score tcc.temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:yellow_dye",Slot:-106b}].Slot
execute if score tcc.temp_1 tcc.dummy < tcc.temp_0 tcc.dummy run scoreboard players set tcc.temp_2 tcc.dummy 16
execute if score tcc.temp_1 tcc.dummy < tcc.temp_0 tcc.dummy run scoreboard players operation tcc.temp_0 tcc.dummy = tcc.temp_1 tcc.dummy

scoreboard players reset tcc.temp_0 tcc.dummy
scoreboard players reset tcc.temp_1 tcc.dummy
