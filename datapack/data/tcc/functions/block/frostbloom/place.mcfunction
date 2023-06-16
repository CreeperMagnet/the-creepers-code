############################################################
# Rotates the block you're looking at
############################################################

item replace entity @s[gamemode=!creative,nbt={Inventory:[{Slot:-106b,tag:{tcc:{id:"frostbloom"}}}]},nbt=!{SelectedItem:{tag:{tcc:{id:"frostbloom"}}}}] weapon.offhand with air
item replace entity @s[gamemode=!creative,nbt={SelectedItem:{tag:{tcc:{id:"frostbloom"}}}}] weapon.mainhand with air
execute unless block ~ ~-1 ~ #tcc:snowy_dirts run summon item_display ~ ~ ~ {CustomName:'{"translate":"block.tcc.frostbloom"}',Tags:["tcc.block","tcc.tick","tcc.second_clock","tcc.frostbloom","smithed.entity","smithed.block"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.001f,1.001f,1.001f], right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330003}}}
execute if block ~ ~-1 ~ #tcc:snowy_dirts run summon item_display ~ ~ ~ {CustomName:'{"translate":"block.tcc.frostbloom"}',Tags:["tcc.block","tcc.tick","tcc.second_clock","tcc.frostbloom","smithed.entity","smithed.block"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.001f,1.001f,1.001f], right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330004}}}
setblock ~ ~ ~ spruce_sapling
scoreboard players reset @s tcc.dummy
playsound minecraft:block.grass.place block @a[distance=..16]
