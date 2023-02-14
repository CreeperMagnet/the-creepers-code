############################################################
# Modifies the storage for a specific potion type
############################################################

data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.diluted_potion.effect.nausea","italic":false,"color":"white"}'
data modify storage tcc:storage root.temp.item.tag.display.Lore prepend value '{"color":"red","italic":false,"translate":"potion.withDuration","with":[{"translate":"effect.minecraft.nausea"},{"translate":"potion.tcc.duration","with":[0,0,0,3]}]}'
data modify storage tcc:storage root.temp.item.tag.CustomModelData set value 330239