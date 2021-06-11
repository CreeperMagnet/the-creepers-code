############################################################
# Description: Sets inventory stuff for players clicking teapots
# Creator: CreeperMagnet_
############################################################

scoreboard players set @s tcc.dummy 0
execute if entity @s[gamemode=creative] store result score @s tcc.dummy run clear @s minecraft:potion{Potion:"minecraft:water"} 0
execute if entity @s[scores={tcc.dummy=0},gamemode=creative] run give @s minecraft:potion{Potion:"minecraft:water"} 1
execute if entity @s[nbt={SelectedItem:{Count:1b}},gamemode=!creative] run item replace entity @s weapon.mainhand with minecraft:potion{Potion:"minecraft:water"} 1
execute if entity @s[nbt=!{SelectedItem:{Count:1b}},gamemode=!creative] run give @s minecraft:potion{Potion:"minecraft:water"} 1
execute if entity @s[nbt=!{SelectedItem:{Count:1b}},gamemode=!creative] run clear @s minecraft:glass_bottle 1
playsound minecraft:item.bottle.fill player @a[distance=..16]
