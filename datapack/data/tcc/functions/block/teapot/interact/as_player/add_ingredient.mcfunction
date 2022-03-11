############################################################
# Sets inventory stuff for players clicking teapots
############################################################

item modify entity @s weapon.mainhand tcc:reduce_count/1
execute if data storage tcc:storage root.temp.item.tag.tcc{id:"riftjuice_bottle"} run item replace entity @s weapon.mainhand with minecraft:glass_bottle 1
execute if data storage tcc:storage root.temp.item{id:"minecraft:honey_bottle",Count:1b} run item replace entity @s weapon.mainhand with minecraft:glass_bottle 1
give @s[nbt={SelectedItem:{id:"minecraft:honey_bottle"}}] minecraft:glass_bottle 1