# Modifies the storage for a specific potion type

data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.diluted_potion.effect.thick","italic":false,"color":"white"}'
data modify storage tcc:storage root.temp.item.tag.display.Lore prepend value '{"color":"gray","italic":false,"translate":"effect.none"}'
data modify storage tcc:storage root.temp.item.tag.CustomModelData set value 330049
data modify storage tcc:storage root.temp.item.tag.tcc.potion.no_effects set value 1b
data remove storage tcc:storage root.temp.item.tag.Enchantments