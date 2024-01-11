# Modifies the storage for a specific potion type

data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.diluted_potion.effect.harming","italic":false,"color":"white"}'
data modify storage tcc:storage root.temp.item.tag.display.Lore prepend value '{"color":"red","italic":false,"translate":"effect.tcc.minor_instant_damage"}'
data modify storage tcc:storage root.temp.item.tag.tcc.potion.uses set value [6,6]
data modify storage tcc:storage root.temp.item.tag.display.Lore[1] set value '{"translate":"item.tcc.diluted_potion.uses","color":"gray","italic":false,"with":[6,6]}'
data modify storage tcc:storage root.temp.item.tag.CustomModelData set value 330105