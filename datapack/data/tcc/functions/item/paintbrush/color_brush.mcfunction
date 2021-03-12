############################################################
# Description: Colors a paintbrush
# Creator: CreeperMagnet_
############################################################

execute if entity @s[nbt={SelectedItem:{tag:{tcc:{id:"paintbrush"}}}}] run data modify storage tcc:storage root.temp.Items insert 0 from entity @s SelectedItem
execute if entity @s[nbt=!{SelectedItem:{tag:{tcc:{id:"paintbrush"}}}},nbt={Inventory:[{tag:{tcc:{id:"paintbrush"}},Slot:-106b}]}] run data modify storage tcc:storage root.temp.Items insert 0 from entity @s Inventory[{Slot:-106b}]
data remove storage tcc:storage root.temp.Items[0].Slot
execute in minecraft:overworld run data modify block -30000000 0 2033 Items set from storage tcc:storage root.temp.Items

execute if score tcc.temp_2 tcc.dummy matches 1 run clear @s[gamemode=!creative,gamemode=!spectator] black_dye 1
execute if score tcc.temp_2 tcc.dummy matches 1 in minecraft:overworld run data modify block -30000000 0 2033 Items[0].tag.CustomModelData set value 330011
execute if score tcc.temp_2 tcc.dummy matches 2 run clear @s[gamemode=!creative,gamemode=!spectator] blue_dye 1
execute if score tcc.temp_2 tcc.dummy matches 2 in minecraft:overworld run data modify block -30000000 0 2033 Items[0].tag.CustomModelData set value 330012
execute if score tcc.temp_2 tcc.dummy matches 3 run clear @s[gamemode=!creative,gamemode=!spectator] brown_dye 1
execute if score tcc.temp_2 tcc.dummy matches 3 in minecraft:overworld run data modify block -30000000 0 2033 Items[0].tag.CustomModelData set value 330013
execute if score tcc.temp_2 tcc.dummy matches 4 run clear @s[gamemode=!creative,gamemode=!spectator] cyan_dye 1
execute if score tcc.temp_2 tcc.dummy matches 4 in minecraft:overworld run data modify block -30000000 0 2033 Items[0].tag.CustomModelData set value 330014
execute if score tcc.temp_2 tcc.dummy matches 5 run clear @s[gamemode=!creative,gamemode=!spectator] gray_dye 1
execute if score tcc.temp_2 tcc.dummy matches 5 in minecraft:overworld run data modify block -30000000 0 2033 Items[0].tag.CustomModelData set value 330015
execute if score tcc.temp_2 tcc.dummy matches 6 run clear @s[gamemode=!creative,gamemode=!spectator] green_dye 1
execute if score tcc.temp_2 tcc.dummy matches 6 in minecraft:overworld run data modify block -30000000 0 2033 Items[0].tag.CustomModelData set value 330016
execute if score tcc.temp_2 tcc.dummy matches 7 run clear @s[gamemode=!creative,gamemode=!spectator] light_blue_dye 1
execute if score tcc.temp_2 tcc.dummy matches 7 in minecraft:overworld run data modify block -30000000 0 2033 Items[0].tag.CustomModelData set value 330017
execute if score tcc.temp_2 tcc.dummy matches 8 run clear @s[gamemode=!creative,gamemode=!spectator] light_gray_dye 1
execute if score tcc.temp_2 tcc.dummy matches 8 in minecraft:overworld run data modify block -30000000 0 2033 Items[0].tag.CustomModelData set value 330018
execute if score tcc.temp_2 tcc.dummy matches 9 run clear @s[gamemode=!creative,gamemode=!spectator] lime_dye 1
execute if score tcc.temp_2 tcc.dummy matches 9 in minecraft:overworld run data modify block -30000000 0 2033 Items[0].tag.CustomModelData set value 330019
execute if score tcc.temp_2 tcc.dummy matches 10 run clear @s[gamemode=!creative,gamemode=!spectator] magenta_dye 1
execute if score tcc.temp_2 tcc.dummy matches 10 in minecraft:overworld run data modify block -30000000 0 2033 Items[0].tag.CustomModelData set value 330020
execute if score tcc.temp_2 tcc.dummy matches 11 run clear @s[gamemode=!creative,gamemode=!spectator] orange_dye 1
execute if score tcc.temp_2 tcc.dummy matches 11 in minecraft:overworld run data modify block -30000000 0 2033 Items[0].tag.CustomModelData set value 330021
execute if score tcc.temp_2 tcc.dummy matches 12 run clear @s[gamemode=!creative,gamemode=!spectator] pink_dye 1
execute if score tcc.temp_2 tcc.dummy matches 12 in minecraft:overworld run data modify block -30000000 0 2033 Items[0].tag.CustomModelData set value 330022
execute if score tcc.temp_2 tcc.dummy matches 13 run clear @s[gamemode=!creative,gamemode=!spectator] purple_dye 1
execute if score tcc.temp_2 tcc.dummy matches 13 in minecraft:overworld run data modify block -30000000 0 2033 Items[0].tag.CustomModelData set value 330023
execute if score tcc.temp_2 tcc.dummy matches 14 run clear @s[gamemode=!creative,gamemode=!spectator] red_dye 1
execute if score tcc.temp_2 tcc.dummy matches 14 in minecraft:overworld run data modify block -30000000 0 2033 Items[0].tag.CustomModelData set value 330024
execute if score tcc.temp_2 tcc.dummy matches 15 run clear @s[gamemode=!creative,gamemode=!spectator] white_dye 1
execute if score tcc.temp_2 tcc.dummy matches 15 in minecraft:overworld run data modify block -30000000 0 2033 Items[0].tag.CustomModelData set value 330025
execute if score tcc.temp_2 tcc.dummy matches 16 run clear @s[gamemode=!creative,gamemode=!spectator] yellow_dye 1
execute if score tcc.temp_2 tcc.dummy matches 16 in minecraft:overworld run data modify block -30000000 0 2033 Items[0].tag.CustomModelData set value 330026

execute in minecraft:overworld run loot replace entity @s[nbt={SelectedItem:{tag:{tcc:{id:"paintbrush"}}}}] weapon.mainhand 1 mine -30000000 0 2033 minecraft:air{drop_contents:1b}
execute in minecraft:overworld run loot replace entity @s[nbt=!{SelectedItem:{tag:{tcc:{id:"paintbrush"}}}}] weapon.offhand 1 mine -30000000 0 2033 minecraft:air{drop_contents:1b}
scoreboard players reset tcc.temp_2
