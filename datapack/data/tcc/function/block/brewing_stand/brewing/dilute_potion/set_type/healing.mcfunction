# Modifies the storage for a specific potion type

data modify storage tcc:temp root.item.components."minecraft:item_name" set value '{"translate":"item.tcc.diluted_potion.effect.healing"}'
data modify storage tcc:temp root.item.components."minecraft:lore" prepend value '{"color":"blue","italic":false,"translate":"effect.tcc.minor_instant_health"}'
data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion.uses set value [4,4]
data modify storage tcc:temp root.item.components."minecraft:lore"[1] set value '{"translate":"item.tcc.diluted_potion.uses","color":"gray","italic":false,"with":[4,4]}'
data modify storage tcc:temp root.item.components."minecraft:custom_model_data" set value 330093