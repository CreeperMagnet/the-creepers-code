############################################################
# Description: Sets inventory stuff for players clicking teapots
# Creator: CreeperMagnet_
############################################################

execute if entity @s[nbt={SelectedItem:{Count:1b}},gamemode=!creative] run replaceitem entity @s weapon.mainhand minecraft:potion{Potion:"minecraft:water"} 1
execute unless entity @s[nbt={SelectedItem:{Count:1b}},gamemode=!creative] run give @s minecraft:potion{Potion:"minecraft:water"} 1
execute if entity @s[nbt=!{SelectedItem:{Count:1b}},gamemode=!creative] run clear @s minecraft:glass_bottle 1
playsound minecraft:item.bottle.fill player @a[distance=..16]
