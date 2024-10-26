# Commands to place a decorated pot

data modify entity @s item.components."minecraft:custom_data".item set from storage tcc:temp root.item

data modify storage tcc:temp root.macro_input.material set from storage tcc:temp root.item.components."minecraft:custom_data".tcc.type
execute unless data storage tcc:temp root.item.components."minecraft:custom_data".tcc.sherds[0].components."minecraft:custom_data".tcc.sherd run data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc.sherds[0].components."minecraft:custom_data".tcc.sherd set value "blank"
execute unless data storage tcc:temp root.item.components."minecraft:custom_data".tcc.sherds[1].components."minecraft:custom_data".tcc.sherd run data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc.sherds[1].components."minecraft:custom_data".tcc.sherd set value "blank"
execute unless data storage tcc:temp root.item.components."minecraft:custom_data".tcc.sherds[2].components."minecraft:custom_data".tcc.sherd run data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc.sherds[2].components."minecraft:custom_data".tcc.sherd set value "blank"
execute unless data storage tcc:temp root.item.components."minecraft:custom_data".tcc.sherds[3].components."minecraft:custom_data".tcc.sherd run data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc.sherds[3].components."minecraft:custom_data".tcc.sherd set value "blank"

execute if data storage tcc:temp root{direction:"north"} run function tcc:block/decorated_pot/set_faces/north
execute if data storage tcc:temp root{direction:"east"} run function tcc:block/decorated_pot/set_faces/east
execute if data storage tcc:temp root{direction:"south"} run function tcc:block/decorated_pot/set_faces/south
execute if data storage tcc:temp root{direction:"west"} run function tcc:block/decorated_pot/set_faces/west

tag @s remove tcc.decorated_pot.initiate