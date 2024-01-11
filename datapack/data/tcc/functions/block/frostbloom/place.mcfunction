# Rotates the block you're looking at

item replace entity @s[gamemode=!creative,nbt={Inventory:[{Slot:-106b,tag:{tcc:{id:"frostbloom"}}}]},nbt=!{SelectedItem:{tag:{tcc:{id:"frostbloom"}}}}] weapon.offhand with minecraft:air
item replace entity @s[gamemode=!creative,nbt={SelectedItem:{tag:{tcc:{id:"frostbloom"}}}}] weapon.mainhand with minecraft:air
execute unless block ~ ~-1 ~ #tcc:snowy_dirts run summon minecraft:item_display ~ ~ ~ {Tags:["tcc.block","tcc.tick","tcc.second_clock","tcc.frostbloom","smithed.entity","smithed.block"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.001f,1.001f,1.001f], right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330003}},view_range:4.0f}
execute if block ~ ~-1 ~ #tcc:snowy_dirts run summon minecraft:item_display ~ ~ ~ {Tags:["tcc.block","tcc.tick","tcc.second_clock","tcc.frostbloom","smithed.entity","smithed.block"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.001f,1.001f,1.001f], right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330004}},view_range:4.0f}
setblock ~ ~ ~ minecraft:spruce_sapling
scoreboard players reset @s tcc.dummy
playsound minecraft:block.grass.place block @a[distance=..16]
