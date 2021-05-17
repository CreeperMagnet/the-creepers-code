############################################################
# Description: Sets inventory stuff for players clicking teapots
# Creator: CreeperMagnet_
############################################################

execute if entity @s[gamemode=!creative,nbt={SelectedItem:{id:"minecraft:honey_bottle"}},nbt=!{SelectedItem:{Count:1b}}] run give @s minecraft:glass_bottle 1
execute if entity @s[gamemode=!creative,nbt=!{SelectedItem:{tag:{tcc:{id:"riftjuice_bottle"}}}}] unless entity @s[nbt={SelectedItem:{id:"minecraft:honey_bottle",Count:1b}}] run item modify entity @s weapon.mainhand tcc:reduce_count
execute if entity @s[gamemode=!creative] unless entity @s[nbt=!{SelectedItem:{tag:{tcc:{id:"riftjuice_bottle"}}}},nbt=!{SelectedItem:{id:"minecraft:honey_bottle",Count:1b}}] run item replace entity @s weapon.mainhand with minecraft:glass_bottle 1
