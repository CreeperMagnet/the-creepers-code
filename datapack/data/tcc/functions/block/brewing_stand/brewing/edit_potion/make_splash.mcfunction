# Commands to edit an existing custom potion in the brewing stand

data modify storage tcc:temp root.item.id set value "minecraft:splash_potion"
execute if data storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion{id:"tcc:blind_rage"} run data modify storage tcc:temp root.item.components."minecraft:item_name" set value '{"translate":"item.tcc.splash_potion.effect.blind_rage"}'
execute if data storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion{id:"tcc:long_blind_rage"} run data modify storage tcc:temp root.item.components."minecraft:item_name" set value '{"translate":"item.tcc.splash_potion.effect.blind_rage"}'
execute if data storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion{id:"tcc:nausea"} run data modify storage tcc:temp root.item.components."minecraft:item_name" set value '{"translate":"item.tcc.splash_potion.effect.nausea"}'
execute if data storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion{id:"tcc:long_nausea"} run data modify storage tcc:temp root.item.components."minecraft:item_name" set value '{"translate":"item.tcc.splash_potion.effect.nausea"}'
execute if data storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion{id:"tcc:fortitude"} run data modify storage tcc:temp root.item.components."minecraft:item_name" set value '{"translate":"item.tcc.splash_potion.effect.fortitude"}'
execute if data storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion{id:"tcc:long_fortitude"} run data modify storage tcc:temp root.item.components."minecraft:item_name" set value '{"translate":"item.tcc.splash_potion.effect.fortitude"}'
execute if data storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion{id:"tcc:strong_fortitude"} run data modify storage tcc:temp root.item.components."minecraft:item_name" set value '{"translate":"item.tcc.splash_potion.effect.fortitude"}'
