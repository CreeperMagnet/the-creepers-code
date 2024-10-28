# Starts the recipe process of a brewing recipe

data modify storage tcc:temp root.item.components."minecraft:potion_contents" set value {custom_color:8940032,potion:"minecraft:mundane",custom_effects:[{id:"minecraft:blindness",amplifier:0b,duration:300},{id:"minecraft:strength",amplifier:2b,duration:300}]}
data modify storage tcc:temp root.item.components."minecraft:lore" set value ['{"translate":"pack.tcc","color":"#008725"}']
data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc set value {id:"potion",potion:{id:"tcc:blind_rage",can_extend:1b}}
execute if data storage tcc:temp root.item{id:"minecraft:potion"} run data modify storage tcc:temp root.item.components."minecraft:item_name" set value '{"translate":"item.tcc.potion.effect.blind_rage"}'
execute if data storage tcc:temp root.item{id:"minecraft:splash_potion"} run data modify storage tcc:temp root.item.components."minecraft:item_name" set value '{"translate":"item.tcc.splash_potion.effect.blind_rage"}'
execute if data storage tcc:temp root.item{id:"minecraft:lingering_potion"} run data modify storage tcc:temp root.item.components."minecraft:potion_contents".custom_effects set value [{id:"minecraft:blindness",amplifier:0b,duration:60},{id:"minecraft:strength",amplifier:2b,duration:60}]
execute if data storage tcc:temp root.item{id:"minecraft:lingering_potion"} run data modify storage tcc:temp root.item.components."minecraft:lore" set value ['{"color":"red","italic":false,"translate":"potion.withDuration","with":[{"translate":"effect.minecraft.blindness"},{"translate":"potion.tcc.duration","with":[0,0,0,3]}]}','{"color":"blue","italic":false,"translate":"potion.withDuration","with":[{"translate":"potion.withAmplifier","with":[{"translate":"effect.minecraft.strength"},{"translate":"potion.potency.2"}]},{"translate":"potion.tcc.duration","with":[0,0,0,3]}]}','{"text":""}','{"color":"dark_purple","italic":false,"translate":"potion.whenDrank"}','{"color":"blue","italic":false,"translate":"attribute.modifier.plus.0","with":[9,{"translate":"attribute.name.attack_damage"}]}','{"translate":"pack.tcc","color":"#008725"}']
execute if data storage tcc:temp root.item{id:"minecraft:lingering_potion"} run data modify storage tcc:temp root.item.components."minecraft:hide_additional_tooltip" set value {}
execute if data storage tcc:temp root.item{id:"minecraft:lingering_potion"} run data modify storage tcc:temp root.item.components."minecraft:item_name" set value '{"translate":"item.tcc.lingering_potion.effect.blind_rage"}'