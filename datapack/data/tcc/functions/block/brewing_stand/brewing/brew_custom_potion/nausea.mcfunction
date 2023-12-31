############################################################
# Starts the recipe process of a brewing recipe
############################################################

data modify storage tcc:storage root.temp.item.tag.CustomPotionColor set value 9313118
data modify storage tcc:storage root.temp.item.tag.Potion set value "minecraft:mundane"
data modify storage tcc:storage root.temp.item.tag.display.Lore set value ['{"translate":"pack.tcc","color":"#008725"}']
data modify storage tcc:storage root.temp.item.tag.tcc set value {id:"potion",potion:{id:"tcc:nausea",can_extend:1b}}
data modify storage tcc:storage root.temp.item.tag.custom_potion_effects set value [{id:"minecraft:nausea",amplifier:0b,duration:600}]
execute if data storage tcc:storage root.temp.item{id:"minecraft:potion"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.potion.effect.nausea","italic":false}'
execute if data storage tcc:storage root.temp.item{id:"minecraft:splash_potion"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.splash_potion.effect.nausea","italic":false}'
execute if data storage tcc:storage root.temp.item{id:"minecraft:lingering_potion"} run data modify storage tcc:storage root.temp.item.tag.custom_potion_effects set value [{id:"minecraft:nausea",amplifier:0b,duration:120}]
execute if data storage tcc:storage root.temp.item{id:"minecraft:lingering_potion"} run data modify storage tcc:storage root.temp.item.tag.HideFlags set value 32
execute if data storage tcc:storage root.temp.item{id:"minecraft:lingering_potion"} run data modify storage tcc:storage root.temp.item.tag.display.Lore set value ['{"color":"red","italic":false,"translate":"potion.withDuration","with":[{"translate":"effect.minecraft.nausea"},{"translate":"potion.tcc.duration","with":[0,0,0,6]}]}','{"translate":"pack.tcc","color":"#008725"}']
execute if data storage tcc:storage root.temp.item{id:"minecraft:lingering_potion"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.lingering_potion.effect.nausea","italic":false}'