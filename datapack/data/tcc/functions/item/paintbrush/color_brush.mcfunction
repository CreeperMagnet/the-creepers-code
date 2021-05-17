############################################################
# Description: Colors a paintbrush
# Creator: CreeperMagnet_
############################################################


execute if score tcc.temp_2 tcc.dummy matches 1 run clear @s[gamemode=!creative,gamemode=!spectator] black_dye 1
execute if score tcc.temp_2 tcc.dummy matches 2 run clear @s[gamemode=!creative,gamemode=!spectator] blue_dye 1
execute if score tcc.temp_2 tcc.dummy matches 3 run clear @s[gamemode=!creative,gamemode=!spectator] brown_dye 1
execute if score tcc.temp_2 tcc.dummy matches 4 run clear @s[gamemode=!creative,gamemode=!spectator] cyan_dye 1
execute if score tcc.temp_2 tcc.dummy matches 5 run clear @s[gamemode=!creative,gamemode=!spectator] gray_dye 1
execute if score tcc.temp_2 tcc.dummy matches 6 run clear @s[gamemode=!creative,gamemode=!spectator] green_dye 1
execute if score tcc.temp_2 tcc.dummy matches 7 run clear @s[gamemode=!creative,gamemode=!spectator] light_blue_dye 1
execute if score tcc.temp_2 tcc.dummy matches 8 run clear @s[gamemode=!creative,gamemode=!spectator] light_gray_dye 1
execute if score tcc.temp_2 tcc.dummy matches 9 run clear @s[gamemode=!creative,gamemode=!spectator] lime_dye 1
execute if score tcc.temp_2 tcc.dummy matches 10 run clear @s[gamemode=!creative,gamemode=!spectator] magenta_dye 1
execute if score tcc.temp_2 tcc.dummy matches 11 run clear @s[gamemode=!creative,gamemode=!spectator] orange_dye 1
execute if score tcc.temp_2 tcc.dummy matches 12 run clear @s[gamemode=!creative,gamemode=!spectator] pink_dye 1
execute if score tcc.temp_2 tcc.dummy matches 13 run clear @s[gamemode=!creative,gamemode=!spectator] purple_dye 1
execute if score tcc.temp_2 tcc.dummy matches 14 run clear @s[gamemode=!creative,gamemode=!spectator] red_dye 1
execute if score tcc.temp_2 tcc.dummy matches 15 run clear @s[gamemode=!creative,gamemode=!spectator] white_dye 1
execute if score tcc.temp_2 tcc.dummy matches 16 run clear @s[gamemode=!creative,gamemode=!spectator] yellow_dye 1

data remove storage tcc:storage root.temp
execute if entity @s[nbt={SelectedItem:{tag:{tcc:{id:"paintbrush"}}}}] run data modify storage tcc:storage root.temp.item set from entity @s SelectedItem
execute if entity @s[nbt=!{SelectedItem:{tag:{tcc:{id:"paintbrush"}}}},nbt={Inventory:[{tag:{tcc:{id:"paintbrush"}},Slot:-106b}]}] run data modify storage tcc:storage root.temp.item set from entity @s Inventory[{Slot:-106b}]
execute store result storage tcc:storage root.temp.item.tag.CustomModelData int 1 run scoreboard players add tcc.temp_2 tcc.dummy 330010
item modify entity @s[nbt={SelectedItem:{tag:{tcc:{id:"paintbrush"}}}}] weapon.mainhand tcc:copy_nbt
item modify entity @s[nbt=!{SelectedItem:{tag:{tcc:{id:"paintbrush"}}}}] weapon.offhand tcc:copy_nbt
scoreboard players reset tcc.temp_2

playsound tcc:item.paintbrush.paint block @a[distance=..16]