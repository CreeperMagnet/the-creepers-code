# Commands to edit an existing custom potion in the brewing stand

data remove storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion.can_amplify
data remove storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion.can_extend
execute if data storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion{id:"tcc:fortitude"} run data modify storage tcc:temp root.item.components."minecraft:potion_contents".custom_effects set value [{id:"minecraft:health_boost",amplifier:1b,duration:1800}]
execute if data storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion{id:"tcc:fortitude"} run data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion.id set value "tcc:strong_fortitude"
