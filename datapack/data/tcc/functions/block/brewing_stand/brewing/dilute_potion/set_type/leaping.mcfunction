############################################################
# Modifies the storage for a specific potion type
############################################################

data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.diluted_potion.effect.leaping","italic":false,"color":"white"}'
data modify storage tcc:storage root.temp.item.tag.display.Lore prepend value '{"color":"blue","italic":false,"translate":"potion.withDuration","with":[{"translate":"effect.minecraft.jump_boost"},{"translate":"potion.tcc.duration","with":[0,0,1,8]}]}'
data modify storage tcc:storage root.temp.item.tag.CustomModelData set value 330119