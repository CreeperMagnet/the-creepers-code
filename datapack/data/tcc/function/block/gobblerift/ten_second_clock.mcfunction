# Commands to run every ten seconds

data modify entity @s[type=minecraft:item_display] item.components."minecraft:custom_data".break_state set value 0
execute if entity @s[tag=tcc.gobblerift.bonemealable,predicate=!tcc:random_chance/0.1] run function tcc:block/gobblerift/grow/main
execute if entity @s[tag=tcc.gobblerift.digesting] run function tcc:block/gobblerift/grow/digest

execute if entity @s[type=minecraft:interaction,predicate=!tcc:entity_properties/in_vehicle] run function tcc:block/gobblerift/break/interaction
execute if entity @s[type=minecraft:item_display,predicate=!tcc:entity_properties/has_passenger] run function tcc:block/gobblerift/break/main