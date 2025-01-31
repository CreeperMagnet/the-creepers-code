# Starts the recipe process of a brewing recipe

data modify storage tcc:temp root.item.components."minecraft:potion_contents" set value {custom_color:16738851,potion:"minecraft:mundane",custom_name:"tcc:fortitude",custom_effects:[{id:"minecraft:health_boost",amplifier:0b,duration:3600}]}
data modify storage tcc:temp root.item.components."minecraft:lore" set value ['{"translate":"pack.tcc","color":"#008725"}']
data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc set value {id:"potion",potion:{id:"tcc:fortitude",can_extend:1b,can_amplify:1b}}
execute if data storage tcc:temp root.item{id:"minecraft:lingering_potion"} run data modify storage tcc:temp root.item.components."minecraft:potion_contents".custom_effects set value [{id:"minecraft:health_boost",amplifier:0b,duration:900}]
execute if data storage tcc:temp root.item{id:"minecraft:lingering_potion"} run data modify storage tcc:temp root.item.components."minecraft:lore" set value ['{"color":"blue","italic":false,"translate":"potion.withDuration","with":[{"translate":"effect.minecraft.health_boost"},{"translate":"potion.tcc.duration","with":["0","0","4","5"]}]}','{"text":""}','{"color":"dark_purple","italic":false,"translate":"potion.whenDrank"}','{"color":"blue","italic":false,"translate":"attribute.modifier.plus.0","with":["4",{"translate":"attribute.name.max_health"}]}','{"translate":"pack.tcc","color":"#008725"}']
execute if data storage tcc:temp root.item{id:"minecraft:lingering_potion"} run data modify storage tcc:temp root.item.components."minecraft:hide_additional_tooltip" set value {}
