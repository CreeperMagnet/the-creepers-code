# Modifies the storage for a specific potion type

data modify storage tcc:temp root.item.components."minecraft:item_name" set value '{"translate":"item.tcc.diluted_potion.effect.thick"}'
data modify storage tcc:temp root.item.components."minecraft:lore" prepend value '{"color":"gray","italic":false,"translate":"effect.none"}'
data modify storage tcc:temp root.item.components."minecraft:custom_model_data" set value 330049
data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion.no_effects set value 1b