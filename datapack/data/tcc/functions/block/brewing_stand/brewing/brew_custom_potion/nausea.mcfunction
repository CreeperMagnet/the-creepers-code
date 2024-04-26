# Starts the recipe process of a brewing recipe


data modify storage tcc:temp root.item.components."minecraft:potion_contents" set value {custom_color:9313118,potion:"minecraft:mundane",custom_effects:[{id:"minecraft:nausea",amplifier:0b,duration:600}]}
data modify storage tcc:temp root.item.components."minecraft:lore" set value ['{"translate":"pack.tcc","color":"#008725"}']
data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc set value {id:"potion",potion:{id:"tcc:nausea",can_extend:1b}}
execute if data storage tcc:temp root.item{id:"minecraft:potion"} run data modify storage tcc:temp root.item.components."minecraft:item_name" set value '{"translate":"item.tcc.potion.effect.nausea"}'
execute if data storage tcc:temp root.item{id:"minecraft:splash_potion"} run data modify storage tcc:temp root.item.components."minecraft:item_name" set value '{"translate":"item.tcc.splash_potion.effect.nausea"}'
execute if data storage tcc:temp root.item{id:"minecraft:lingering_potion"} run data modify storage tcc:temp root.item.components."minecraft:potion_contents".custom_effects set value [{id:"minecraft:nausea",amplifier:0b,duration:120}]
execute if data storage tcc:temp root.item{id:"minecraft:lingering_potion"} run data modify storage tcc:temp root.item.components."minecraft:lore" set value ['{"color":"red","italic":false,"translate":"potion.withDuration","with":[{"translate":"effect.minecraft.nausea"},{"translate":"potion.tcc.duration","with":[0,0,0,6]}]}','{"translate":"pack.tcc","color":"#008725"}']
execute if data storage tcc:temp root.item{id:"minecraft:lingering_potion"} run data modify storage tcc:temp root.item.components."minecraft:hide_additional_tooltip" set value {}
execute if data storage tcc:temp root.item{id:"minecraft:lingering_potion"} run data modify storage tcc:temp root.item.components."minecraft:item_name" set value '{"translate":"item.tcc.lingering_potion.effect.nausea"}'