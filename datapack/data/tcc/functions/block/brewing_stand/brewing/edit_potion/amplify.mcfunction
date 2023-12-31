############################################################
# Commands to edit an existing custom potion in the brewing stand
############################################################

data remove storage tcc:storage root.temp.item.tag.tcc.potion.can_amplify
data remove storage tcc:storage root.temp.item.tag.tcc.potion.can_extend
execute if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"tcc:fortitude"} run data modify storage tcc:storage root.temp.item.tag.custom_potion_effects set value [{id:"minecraft:health_boost",amplifier:1b,duration:1800}]
execute if data storage tcc:storage root.temp.item{tag:{tcc:{potion:{id:"tcc:fortitude"}}},id:"minecraft:lingering_potion"} run data modify storage tcc:storage root.temp.item.tag.custom_potion_effects set value [{id:"minecraft:health_boost",amplifier:1b,duration:440}]
execute if data storage tcc:storage root.temp.item{tag:{tcc:{potion:{id:"tcc:fortitude"}}},id:"minecraft:lingering_potion"} run data modify storage tcc:storage root.temp.item.tag.display.Lore set value ['{"color":"blue","italic":false,"translate":"potion.withDuration","with":[{"translate":"potion.withAmplifier","with":[{"translate":"effect.minecraft.health_boost"},{"translate":"potion.potency.1"}]},{"translate":"potion.tcc.duration","with":[0,0,2,2]}]}','{"text":""}','{"color":"dark_purple","italic":false,"translate":"potion.whenDrank"}','{"color":"blue","italic":false,"translate":"attribute.modifier.plus.0","with":[8,{"translate":"attribute.name.generic.max_health"}]}','{"translate":"pack.tcc","color":"#008725"}']
execute if data storage tcc:storage root.temp.item.tag.tcc.potion{id:"tcc:fortitude"} run data modify storage tcc:storage root.temp.item.tag.tcc.potion.id set value "tcc:strong_fortitude"
