############################################################
# Commands to edit an existing custom potion in the brewing stand
############################################################

data modify storage tcc:storage root.temp.item.id set value "minecraft:lingering_potion"
data modify storage tcc:storage root.temp.item.tag.HideFlags set value 32
execute if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"tcc:blind_rage"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.lingering_potion.effect.blind_rage","italic":false}'
execute if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"tcc:blind_rage"} run data modify storage tcc:storage root.temp.item.tag.CustomPotionEffects set value [{Id:15,Amplifier:0b,Duration:60},{Id:5,Amplifier:2b,Duration:60}]
execute if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"tcc:blind_rage"} run data modify storage tcc:storage root.temp.item.tag.display.Lore set value ['{"color":"red","italic":false,"translate":"potion.withDuration","with":[{"translate":"effect.minecraft.blindness"},{"translate":"potion.tcc.duration","with":[0,0,3]}]}','{"color":"blue","italic":false,"translate":"potion.withDuration","with":[{"translate":"potion.withAmplifier","with":[{"translate":"effect.minecraft.strength"},{"translate":"potion.potency.2"}]},{"translate":"potion.tcc.duration","with":[0,0,3]}]}','{"text":""}','{"color":"dark_purple","italic":false,"translate":"potion.whenDrank"}','{"color":"blue","italic":false,"translate":"attribute.modifier.plus.0","with":[9,{"translate":"attribute.name.generic.attack_damage"}]}','{"translate":"pack.tcc","color":"#008725"}']
execute if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"tcc:long_blind_rage"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.lingering_potion.effect.blind_rage","italic":false}'
execute if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"tcc:long_blind_rage"} run data modify storage tcc:storage root.temp.item.tag.CustomPotionEffects set value [{Id:15,Amplifier:0b,Duration:120},{Id:5,Amplifier:2b,Duration:120}]
execute if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"tcc:long_blind_rage"} run data modify storage tcc:storage root.temp.item.tag.display.Lore set value ['{"color":"red","italic":false,"translate":"potion.withDuration","with":[{"translate":"effect.minecraft.blindness"},{"translate":"potion.tcc.duration","with":[0,0,6]}]}','{"color":"blue","italic":false,"translate":"potion.withDuration","with":[{"translate":"potion.withAmplifier","with":[{"translate":"effect.minecraft.strength"},{"translate":"potion.potency.2"}]},{"translate":"potion.tcc.duration","with":[0,0,6]}]}','{"text":""}','{"color":"dark_purple","italic":false,"translate":"potion.whenDrank"}','{"color":"blue","italic":false,"translate":"attribute.modifier.plus.0","with":[9,{"translate":"attribute.name.generic.attack_damage"}]}','{"translate":"pack.tcc","color":"#008725"}']
execute if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"tcc:nausea"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.lingering_potion.effect.nausea","italic":false}'
execute if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"tcc:nausea"} run data modify storage tcc:storage root.temp.item.tag.CustomPotionEffects set value [{Id:9,Amplifier:0b,Duration:120}]
execute if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"tcc:nausea"} run data modify storage tcc:storage root.temp.item.tag.display.Lore set value ['{"color":"red","italic":false,"translate":"potion.withDuration","with":[{"translate":"effect.minecraft.nausea"},{"translate":"potion.tcc.duration","with":[0,0,6]}]}','{"translate":"pack.tcc","color":"#008725"}']
execute if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"tcc:long_nausea"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.lingering_potion.effect.nausea","italic":false}'
execute if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"tcc:long_nausea"} run data modify storage tcc:storage root.temp.item.tag.CustomPotionEffects set value [{Id:9,Amplifier:0b,Duration:240}]
execute if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"tcc:long_nausea"} run data modify storage tcc:storage root.temp.item.tag.display.Lore set value ['{"color":"red","italic":false,"translate":"potion.withDuration","with":[{"translate":"effect.minecraft.nausea"},{"translate":"potion.tcc.duration","with":[0,1,2]}]}','{"translate":"pack.tcc","color":"#008725"}']