# Ticks a living entity with a wandering trader base

item replace entity @s weapon.mainhand with minecraft:structure_block
data modify entity @s[tag=!tcc.trader_entity.no_head] ArmorItems[3].components."minecraft:custom_model_data" set from entity @s ArmorItems[3].components."minecraft:custom_data".tcc.custom_model_data.head
data modify entity @s[tag=!tcc.spellcasting] HandItems[0].components."minecraft:custom_model_data" set from entity @s ArmorItems[3].components."minecraft:custom_data".tcc.custom_model_data.idle
data modify entity @s[tag=!tcc.spellcasting,tag=!tcc.trader_entity.static,predicate=tcc:entity_properties/moving,predicate=!tcc:entity_properties/in_vehicle] HandItems[0].components."minecraft:custom_model_data" set from entity @s ArmorItems[3].components."minecraft:custom_data".tcc.custom_model_data.moving
data modify entity @s[tag=tcc.spellcasting] HandItems[0].components."minecraft:custom_model_data" set from entity @s ArmorItems[3].components."minecraft:custom_data".tcc.custom_model_data.spellcasting

execute if entity @s[nbt=!{HurtTime:0s}] run function tcc:entity/trader_entity/hurt/main
