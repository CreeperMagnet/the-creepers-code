############################################################
# Modifies the storage for a specific potion type
############################################################

data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.diluted_potion.effect.regeneration","italic":false,"color":"white"}'
data modify storage tcc:storage root.temp.item.tag.display.Lore prepend value '{"color":"blue","italic":false,"translate":"potion.withDuration","with":[{"translate":"potion.withAmplifier","with":[{"translate":"effect.minecraft.regeneration"},{"translate":"potion.potency.1"}]},{"translate":"potion.tcc.duration","with":[0,0,2]}]}'
data modify storage tcc:storage root.temp.item.tag.CustomModelData set value 330129