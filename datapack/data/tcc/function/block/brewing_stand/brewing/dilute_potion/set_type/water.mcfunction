# Modifies the storage for a specific potion type

data modify storage tcc:temp root.item.components."minecraft:item_name" set value '{"translate":"item.tcc.diluted_potion.effect.water"}'
data modify storage tcc:temp root.item.components."minecraft:lore" prepend value '{"color":"gray","italic":false,"translate":"effect.none"}'
data modify storage tcc:temp root.item.components."minecraft:item_model" set value "tcc:diluted_potion/water/main"
data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion.no_effects set value 1b