# Rotates the block you're looking at

item modify entity @s[gamemode=!creative,predicate=!tcc:entity_properties/slots/weapon.mainhand/sprouter_egg] weapon.offhand tcc:reduce_count
item modify entity @s[gamemode=!creative,predicate=tcc:entity_properties/slots/weapon.mainhand/sprouter_egg] weapon.mainhand tcc:reduce_count
summon minecraft:item_display ~ ~ ~ {Tags:["tcc.block","tcc.item_display","tcc.sprouter_egg","smithed.entity","smithed.block"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.001f,1.001f,1.001f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:block/sprouter_egg","minecraft:custom_model_data":{"floats":[0.0f]}}},view_range:4.0f}
setblock ~ ~ ~ minecraft:sniffer_egg destroy
scoreboard players reset @s tcc.dummy
playsound minecraft:block.metal.place block @a[distance=..16]