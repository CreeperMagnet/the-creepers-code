# Starts the recipe process of a brewing recipe

data modify storage tcc:storage root.temp.item.tag.CustomPotionColor set value 16738851
data modify storage tcc:storage root.temp.item.tag.Potion set value "minecraft:mundane"
data modify storage tcc:storage root.temp.item.tag.display.Lore set value ['{"translate":"pack.tcc","color":"#008725"}']
data modify storage tcc:storage root.temp.item.tag.tcc set value {id:"potion",potion:{id:"tcc:fortitude",can_extend:1b,can_amplify:1b}}
data modify storage tcc:storage root.temp.item.tag.custom_potion_effects set value [{id:"minecraft:health_boost",amplifier:0b,duration:3600}]
execute if data storage tcc:storage root.temp.item{id:"minecraft:potion"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.potion.effect.fortitude","italic":false}'
execute if data storage tcc:storage root.temp.item{id:"minecraft:splash_potion"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.splash_potion.effect.fortitude","italic":false}'
execute if data storage tcc:storage root.temp.item{id:"minecraft:lingering_potion"} run data modify storage tcc:storage root.temp.item.tag.custom_potion_effects set value [{id:"minecraft:health_boost",amplifier:0b,duration:900}]
execute if data storage tcc:storage root.temp.item{id:"minecraft:lingering_potion"} run data modify storage tcc:storage root.temp.item.tag.HideFlags set value 32
execute if data storage tcc:storage root.temp.item{id:"minecraft:lingering_potion"} run data modify storage tcc:storage root.temp.item.tag.display.Lore set value ['{"color":"blue","italic":false,"translate":"potion.withDuration","with":[{"translate":"effect.minecraft.health_boost"},{"translate":"potion.tcc.duration","with":[0,0,4,5]}]}','{"text":""}','{"color":"dark_purple","italic":false,"translate":"potion.whenDrank"}','{"color":"blue","italic":false,"translate":"attribute.modifier.plus.0","with":[4,{"translate":"attribute.name.generic.max_health"}]}','{"translate":"pack.tcc","color":"#008725"}']
execute if data storage tcc:storage root.temp.item{id:"minecraft:lingering_potion"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.lingering_potion.effect.fortitude","italic":false}'