# Starts the recipe process of a brewing recipe

data modify storage tcc:temp root.item.components."minecraft:potion_contents" set value {custom_color:8940032,potion:"minecraft:mundane",custom_name:"tcc:blind_rage",custom_effects:[{id:"minecraft:blindness",amplifier:0b,duration:300},{id:"minecraft:strength",amplifier:4b,duration:300}]}
data modify storage tcc:temp root.item.components."minecraft:lore" set value [{"translate":"pack.tcc","color":"#008725"}]
data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc set value {id:"potion",potion:{id:"tcc:blind_rage",can_extend:1b}}