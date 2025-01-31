# Commands to edit an existing custom potion in the brewing stand

data remove storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion.can_extend
data remove storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion.can_amplify
execute if data storage tcc:temp root.item{id:"minecraft:lingering_potion"} run data modify storage tcc:temp root.item.components."minecraft:hide_additional_tooltip" set value {}
execute if data storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion{id:"tcc:blind_rage"} run data modify storage tcc:temp root.item.components."minecraft:potion_contents".custom_effects set value [{id:"minecraft:blindness",amplifier:0b,duration:600},{id:"minecraft:strength",amplifier:4b,duration:600}]
execute if data storage tcc:temp root.item{components:{"minecraft:custom_data":{tcc:{potion:{id:"tcc:blind_rage"}}}},id:"minecraft:lingering_potion"} run data modify storage tcc:temp root.item.components."minecraft:potion_contents".custom_effects set value [{id:"minecraft:blindness",amplifier:0b,duration:120},{id:"minecraft:strength",amplifier:4b,duration:120}]
execute if data storage tcc:temp root.item{components:{"minecraft:custom_data":{tcc:{potion:{id:"tcc:blind_rage"}}}},id:"minecraft:lingering_potion"} run data modify storage tcc:temp root.item.components."minecraft:lore" set value ['{"color":"red","italic":false,"translate":"potion.withDuration","with":[{"translate":"effect.minecraft.blindness"},{"translate":"potion.tcc.duration","with":["0","0","0","6"]}]}','{"color":"blue","italic":false,"translate":"potion.withDuration","with":[{"translate":"potion.withAmplifier","with":[{"translate":"effect.minecraft.strength"},{"translate":"potion.potency.4"}]},{"translate":"potion.tcc.duration","with":["0","0","0","6"]}]}','{"text":""}','{"color":"dark_purple","italic":false,"translate":"potion.whenDrank"}','{"color":"blue","italic":false,"translate":"attribute.modifier.plus.0","with":["15",{"translate":"attribute.name.attack_damage"}]}','{"translate":"pack.tcc","color":"#008725"}']
execute if data storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion{id:"tcc:blind_rage"} run data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion.id set value "tcc:long_blind_rage"
execute if data storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion{id:"tcc:fortitude"} run data modify storage tcc:temp root.item.components."minecraft:potion_contents".custom_effects set value [{id:"minecraft:health_boost",amplifier:0b,duration:9600}]
execute if data storage tcc:temp root.item{components:{"minecraft:custom_data":{tcc:{potion:{id:"tcc:fortitude"}}}},id:"minecraft:lingering_potion"} run data modify storage tcc:temp root.item.components."minecraft:potion_contents".custom_effects set value [{id:"minecraft:health_boost",amplifier:0b,duration:2400}]
execute if data storage tcc:temp root.item{components:{"minecraft:custom_data":{tcc:{potion:{id:"tcc:fortitude"}}}},id:"minecraft:lingering_potion"} run data modify storage tcc:temp root.item.components."minecraft:lore" set value ['{"color":"blue","italic":false,"translate":"potion.withDuration","with":[{"translate":"effect.minecraft.health_boost"},{"translate":"potion.tcc.duration","with":["0","2","0","0"]}]}','{"text":""}','{"color":"dark_purple","italic":false,"translate":"potion.whenDrank"}','{"color":"blue","italic":false,"translate":"attribute.modifier.plus.0","with":["4",{"translate":"attribute.name.max_health"}]}','{"translate":"pack.tcc","color":"#008725"}']
execute if data storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion{id:"tcc:fortitude"} run data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion.id set value "tcc:long_fortitude"
