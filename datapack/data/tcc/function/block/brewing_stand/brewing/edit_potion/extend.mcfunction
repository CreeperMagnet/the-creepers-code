# Commands to edit an existing custom potion in the brewing stand

data remove storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion.can_extend
data remove storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion.can_amplify
execute if data storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion{id:"tcc:blind_rage"} run data modify storage tcc:temp root.item.components."minecraft:potion_contents".custom_effects set value [{id:"minecraft:blindness",amplifier:0b,duration:600},{id:"minecraft:strength",amplifier:4b,duration:600}]
execute if data storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion{id:"tcc:blind_rage"} run data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion.id set value "tcc:long_blind_rage"
execute if data storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion{id:"tcc:fortitude"} run data modify storage tcc:temp root.item.components."minecraft:potion_contents".custom_effects set value [{id:"minecraft:health_boost",amplifier:0b,duration:9600}]
execute if data storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion{id:"tcc:fortitude"} run data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion.id set value "tcc:long_fortitude"
