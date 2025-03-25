# Starts the recipe process of a brewing recipe

data modify storage tcc:temp root.item.components."minecraft:potion_contents" set value {custom_color:16738851,potion:"minecraft:mundane",custom_name:"tcc:fortitude",custom_effects:[{id:"minecraft:health_boost",amplifier:0b,duration:3600}]}
data modify storage tcc:temp root.item.components."minecraft:lore" set value [{"translate":"pack.tcc","color":"#008725"}]
data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc set value {id:"potion",potion:{id:"tcc:fortitude",can_extend:1b,can_amplify:1b}}