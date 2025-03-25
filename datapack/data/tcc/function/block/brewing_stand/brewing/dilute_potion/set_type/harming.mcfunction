# Modifies the storage for a specific potion type

data modify storage tcc:temp root.item.components."minecraft:item_name" set value {"translate":"item.tcc.diluted_potion.effect.harming"}
data modify storage tcc:temp root.item.components."minecraft:lore" prepend value {"color":"red","italic":false,"translate":"effect.tcc.minor_instant_damage"}
data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion.uses set value [6,6]
data modify storage tcc:temp root.item.components."minecraft:lore"[1] set value {"translate":"item.tcc.diluted_potion.uses","color":"gray","italic":false,"with":["6","6"]}
data modify storage tcc:temp root.item.components."minecraft:custom_model_data".colors[0] set value 11101546
data modify storage tcc:temp root.item.components."minecraft:custom_model_data".floats[0] set value 6.0f