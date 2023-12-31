############################################################
# Starts the recipe process of a brewing recipe
############################################################

data modify storage tcc:storage root.temp.item.tag.CustomPotionColor set value 8940032
data modify storage tcc:storage root.temp.item.tag.Potion set value "minecraft:mundane"
data modify storage tcc:storage root.temp.item.tag.display.Lore set value ['{"translate":"pack.tcc","color":"#008725"}']
data modify storage tcc:storage root.temp.item.tag.tcc set value {id:"potion",potion:{id:"tcc:blind_rage",can_extend:1b}}
data modify storage tcc:storage root.temp.item.tag.custom_potion_effects set value [{id:"minecraft:blindness",amplifier:0b,duration:300},{id:"minecraft:strength",amplifier:2b,duration:300}]
execute if data storage tcc:storage root.temp.item{id:"minecraft:potion"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.potion.effect.blind_rage","italic":false}'
execute if data storage tcc:storage root.temp.item{id:"minecraft:splash_potion"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.splash_potion.effect.blind_rage","italic":false}'
execute if data storage tcc:storage root.temp.item{id:"minecraft:lingering_potion"} run data modify storage tcc:storage root.temp.item.tag.custom_potion_effects set value [{id:"minecraft:blindness",amplifier:0b,duration:60},{id:"minecraft:strength",amplifier:2b,duration:60}]
execute if data storage tcc:storage root.temp.item{id:"minecraft:lingering_potion"} run data modify storage tcc:storage root.temp.item.tag.HideFlags set value 32
execute if data storage tcc:storage root.temp.item{id:"minecraft:lingering_potion"} run data modify storage tcc:storage root.temp.item.tag.display.Lore set value ['{"color":"red","italic":false,"translate":"potion.withDuration","with":[{"translate":"effect.minecraft.blindness"},{"translate":"potion.tcc.duration","with":[0,0,0,3]}]}','{"color":"blue","italic":false,"translate":"potion.withDuration","with":[{"translate":"potion.withAmplifier","with":[{"translate":"effect.minecraft.strength"},{"translate":"potion.potency.2"}]},{"translate":"potion.tcc.duration","with":[0,0,0,3]}]}','{"text":""}','{"color":"dark_purple","italic":false,"translate":"potion.whenDrank"}','{"color":"blue","italic":false,"translate":"attribute.modifier.plus.0","with":[9,{"translate":"attribute.name.generic.attack_damage"}]}','{"translate":"pack.tcc","color":"#008725"}']
execute if data storage tcc:storage root.temp.item{id:"minecraft:lingering_potion"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.lingering_potion.effect.blind_rage","italic":false}'