############################################################
# Modifies the storage for a specific potion type
############################################################

data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.diluted_potion.effect.blind_rage","italic":false,"color":"white"}'
data modify storage tcc:storage root.temp.item.tag.display.Lore prepend value '{"color":"blue","italic":false,"translate":"potion.withDuration","with":[{"translate":"potion.withAmplifier","with":[{"translate":"effect.minecraft.strength"},{"translate":"potion.potency.2"}]},{"translate":"potion.tcc.duration","with":[0,0,0,2]}]}'
data modify storage tcc:storage root.temp.item.tag.display.Lore prepend value '{"color":"red","italic":false,"translate":"potion.withDuration","with":[{"translate":"effect.minecraft.blindness"},{"translate":"potion.tcc.duration","with":[0,0,0,2]}]}'
data modify storage tcc:storage root.temp.item.tag.display.Lore append value '{"text":""}'
data modify storage tcc:storage root.temp.item.tag.display.Lore append value '{"color":"dark_purple","italic":false,"translate":"potion.whenDrank"}'
data modify storage tcc:storage root.temp.item.tag.display.Lore append value '{"color":"blue","italic":false,"translate":"attribute.modifier.plus.0","with":[9,{"translate":"attribute.name.generic.attack_damage"}]}'
data modify storage tcc:storage root.temp.item.tag.CustomModelData set value 330229
data modify storage tcc:storage root.temp.item.tag.tcc.potion.multiline_lore set value 1b