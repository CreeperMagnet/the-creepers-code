############################################################
# Finds the proper dye in their inventory
############################################################

scoreboard players set #temp_0 tcc.dummy 1000
scoreboard players reset #temp_1 tcc.dummy
scoreboard players reset #temp_2 tcc.dummy

execute if data entity @s Inventory[{id:"minecraft:black_dye"}] store result score #temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:black_dye"}].Slot
execute if score #temp_1 tcc.dummy < #temp_0 tcc.dummy run data modify storage tcc:storage root.temp.item.id set value "minecraft:black_dye"
execute if score #temp_1 tcc.dummy < #temp_0 tcc.dummy run scoreboard players operation #temp_0 tcc.dummy = #temp_1 tcc.dummy

execute if data entity @s Inventory[{id:"minecraft:blue_dye"}] store result score #temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:blue_dye"}].Slot
execute if score #temp_1 tcc.dummy < #temp_0 tcc.dummy run data modify storage tcc:storage root.temp.item.id set value "minecraft:blue_dye"
execute if score #temp_1 tcc.dummy < #temp_0 tcc.dummy run scoreboard players operation #temp_0 tcc.dummy = #temp_1 tcc.dummy

execute if data entity @s Inventory[{id:"minecraft:brown_dye"}] store result score #temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:brown_dye"}].Slot
execute if score #temp_1 tcc.dummy < #temp_0 tcc.dummy run data modify storage tcc:storage root.temp.item.id set value "minecraft:brown_dye"
execute if score #temp_1 tcc.dummy < #temp_0 tcc.dummy run scoreboard players operation #temp_0 tcc.dummy = #temp_1 tcc.dummy

execute if data entity @s Inventory[{id:"minecraft:cyan_dye"}] store result score #temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:cyan_dye"}].Slot
execute if score #temp_1 tcc.dummy < #temp_0 tcc.dummy run data modify storage tcc:storage root.temp.item.id set value "minecraft:cyan_dye"
execute if score #temp_1 tcc.dummy < #temp_0 tcc.dummy run scoreboard players operation #temp_0 tcc.dummy = #temp_1 tcc.dummy

execute if data entity @s Inventory[{id:"minecraft:gray_dye"}] store result score #temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:gray_dye"}].Slot
execute if score #temp_1 tcc.dummy < #temp_0 tcc.dummy run data modify storage tcc:storage root.temp.item.id set value "minecraft:gray_dye"
execute if score #temp_1 tcc.dummy < #temp_0 tcc.dummy run scoreboard players operation #temp_0 tcc.dummy = #temp_1 tcc.dummy

execute if data entity @s Inventory[{id:"minecraft:green_dye"}] store result score #temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:green_dye"}].Slot
execute if score #temp_1 tcc.dummy < #temp_0 tcc.dummy run data modify storage tcc:storage root.temp.item.id set value "minecraft:green_dye"
execute if score #temp_1 tcc.dummy < #temp_0 tcc.dummy run scoreboard players operation #temp_0 tcc.dummy = #temp_1 tcc.dummy

execute if data entity @s Inventory[{id:"minecraft:light_blue_dye"}] store result score #temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:light_blue_dye"}].Slot
execute if score #temp_1 tcc.dummy < #temp_0 tcc.dummy run data modify storage tcc:storage root.temp.item.id set value "minecraft:light_blue_dye"
execute if score #temp_1 tcc.dummy < #temp_0 tcc.dummy run scoreboard players operation #temp_0 tcc.dummy = #temp_1 tcc.dummy

execute if data entity @s Inventory[{id:"minecraft:light_gray_dye"}] store result score #temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:light_gray_dye"}].Slot
execute if score #temp_1 tcc.dummy < #temp_0 tcc.dummy run data modify storage tcc:storage root.temp.item.id set value "minecraft:light_gray_dye"
execute if score #temp_1 tcc.dummy < #temp_0 tcc.dummy run scoreboard players operation #temp_0 tcc.dummy = #temp_1 tcc.dummy

execute if data entity @s Inventory[{id:"minecraft:lime_dye"}] store result score #temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:lime_dye"}].Slot
execute if score #temp_1 tcc.dummy < #temp_0 tcc.dummy run data modify storage tcc:storage root.temp.item.id set value "minecraft:kime_dye"
execute if score #temp_1 tcc.dummy < #temp_0 tcc.dummy run scoreboard players operation #temp_0 tcc.dummy = #temp_1 tcc.dummy

execute if data entity @s Inventory[{id:"minecraft:magenta_dye"}] store result score #temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:magenta_dye"}].Slot
execute if score #temp_1 tcc.dummy < #temp_0 tcc.dummy run data modify storage tcc:storage root.temp.item.id set value "minecraft:magenta_dye"
execute if score #temp_1 tcc.dummy < #temp_0 tcc.dummy run scoreboard players operation #temp_0 tcc.dummy = #temp_1 tcc.dummy

execute if data entity @s Inventory[{id:"minecraft:orange_dye"}] store result score #temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:orange_dye"}].Slot
execute if score #temp_1 tcc.dummy < #temp_0 tcc.dummy run data modify storage tcc:storage root.temp.item.id set value "minecraft:orange_dye"
execute if score #temp_1 tcc.dummy < #temp_0 tcc.dummy run scoreboard players operation #temp_0 tcc.dummy = #temp_1 tcc.dummy

execute if data entity @s Inventory[{id:"minecraft:pink_dye"}] store result score #temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:pink_dye"}].Slot
execute if score #temp_1 tcc.dummy < #temp_0 tcc.dummy run data modify storage tcc:storage root.temp.item.id set value "minecraft:pink_dye"
execute if score #temp_1 tcc.dummy < #temp_0 tcc.dummy run scoreboard players operation #temp_0 tcc.dummy = #temp_1 tcc.dummy

execute if data entity @s Inventory[{id:"minecraft:purple_dye"}] store result score #temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:purple_dye"}].Slot
execute if score #temp_1 tcc.dummy < #temp_0 tcc.dummy run data modify storage tcc:storage root.temp.item.id set value "minecraft:purple_dye"
execute if score #temp_1 tcc.dummy < #temp_0 tcc.dummy run scoreboard players operation #temp_0 tcc.dummy = #temp_1 tcc.dummy

execute if data entity @s Inventory[{id:"minecraft:red_dye"}] store result score #temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:red_dye"}].Slot
execute if score #temp_1 tcc.dummy < #temp_0 tcc.dummy run data modify storage tcc:storage root.temp.item.id set value "minecraft:red_dye"
execute if score #temp_1 tcc.dummy < #temp_0 tcc.dummy run scoreboard players operation #temp_0 tcc.dummy = #temp_1 tcc.dummy

execute if data entity @s Inventory[{id:"minecraft:white_dye"}] store result score #temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:white_dye"}].Slot
execute if score #temp_1 tcc.dummy < #temp_0 tcc.dummy run data modify storage tcc:storage root.temp.item.id set value "minecraft:white_dye"
execute if score #temp_1 tcc.dummy < #temp_0 tcc.dummy run scoreboard players operation #temp_0 tcc.dummy = #temp_1 tcc.dummy

execute if data entity @s Inventory[{id:"minecraft:yellow_dye"}] store result score #temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:yellow_dye"}].Slot
execute if score #temp_1 tcc.dummy < #temp_0 tcc.dummy run data modify storage tcc:storage root.temp.item.id set value "minecraft:yellow_dye"
execute if score #temp_1 tcc.dummy < #temp_0 tcc.dummy run scoreboard players operation #temp_0 tcc.dummy = #temp_1 tcc.dummy

scoreboard players reset #temp_0 tcc.dummy
scoreboard players reset #temp_1 tcc.dummy
