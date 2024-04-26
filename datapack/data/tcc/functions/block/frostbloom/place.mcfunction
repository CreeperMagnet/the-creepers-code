# Rotates the block you're looking at

item modify entity @s[gamemode=!creative,predicate=!tcc:entity_properties/slots/weapon.mainhand/frostbloom] weapon.offhand tcc:reduce_count
item modify entity @s[gamemode=!creative,predicate=tcc:entity_properties/slots/weapon.mainhand/frostbloom] weapon.mainhand tcc:reduce_count
execute unless block ~ ~-1 ~ #tcc:snowy_dirts run summon minecraft:item_display ~ ~ ~ {Tags:["tcc.block","tcc.tick","tcc.second_clock","tcc.frostbloom","smithed.entity","smithed.block"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.001f,1.001f,1.001f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:structure_block",count:1,components:{"minecraft:custom_model_data":330003}},view_range:4.0f}
execute if block ~ ~-1 ~ #tcc:snowy_dirts run summon minecraft:item_display ~ ~ ~ {Tags:["tcc.block","tcc.tick","tcc.second_clock","tcc.frostbloom","smithed.entity","smithed.block"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.001f,1.001f,1.001f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:structure_block",count:1,components:{"minecraft:custom_model_data":330004}},view_range:4.0f}
setblock ~ ~ ~ minecraft:spruce_sapling
scoreboard players reset @s tcc.dummy
playsound minecraft:block.grass.place block @a[distance=..16]
