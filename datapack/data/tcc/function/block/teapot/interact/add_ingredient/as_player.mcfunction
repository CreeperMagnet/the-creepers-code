# Sets inventory stuff for players clicking teapots

item modify entity @s weapon.mainhand tcc:reduce_count
execute if data storage tcc:temp root.item.components."minecraft:custom_data".tcc{id:"riftjuice_bottle"} run item replace entity @s weapon.mainhand with minecraft:glass_bottle 1
execute if data storage tcc:temp root.item{id:"minecraft:honey_bottle",count:1} run item replace entity @s weapon.mainhand with minecraft:glass_bottle 1
execute if data storage tcc:temp root.item{id:"minecraft:tadpole_bucket",count:1} run item replace entity @s weapon.mainhand with minecraft:water_bucket 1
execute if data storage tcc:temp root.item{id:"minecraft:wet_sponge",count:1} run item replace entity @s weapon.mainhand with minecraft:sponge 1
give @s[nbt={SelectedItem:{id:"minecraft:honey_bottle"}}] minecraft:glass_bottle 1
give @s[nbt={SelectedItem:{id:"minecraft:wet_sponge"}}] minecraft:sponge 1