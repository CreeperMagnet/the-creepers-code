############################################################
# Modifies the storage for a specific potion type
############################################################

data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.diluted_potion.effect.healing","italic":false,"color":"white"}'
data modify storage tcc:storage root.temp.item.tag.display.Lore prepend value '{"color":"blue","italic":false,"translate":"effect.tcc.minor_instant_health"}'
data modify storage tcc:storage root.temp.item.tag.tcc.potion.uses set value [8,8]
data modify storage tcc:storage root.temp.item.tag.display.Lore[1] set value '{"translate":"item.tcc.diluted_potion.uses","color":"gray","italic":false,"with":[8,8]}'
data modify storage tcc:storage root.temp.item.tag.CustomModelData set value 330097
data modify storage tcc:storage root.temp.item.tag.tcc.potion.id set value "minecraft:healing"