# Modifies the storage for a specific potion type

data modify storage tcc:temp root.item.components."minecraft:item_name" set value '{"translate":"item.tcc.diluted_potion.effect.blind_rage"}'
data modify storage tcc:temp root.item.components."minecraft:lore" prepend value '{"color":"blue","italic":false,"translate":"potion.withDuration","with":[{"translate":"potion.withAmplifier","with":[{"translate":"effect.minecraft.strength"},{"translate":"potion.potency.2"}]},{"translate":"potion.tcc.duration","with":[0,0,0,3]}]}'
data modify storage tcc:temp root.item.components."minecraft:lore" prepend value '{"color":"red","italic":false,"translate":"potion.withDuration","with":[{"translate":"effect.minecraft.blindness"},{"translate":"potion.tcc.duration","with":[0,0,0,3]}]}'
data modify storage tcc:temp root.item.components."minecraft:lore" append value '{"text":""}'
data modify storage tcc:temp root.item.components."minecraft:lore" append value '{"color":"dark_purple","italic":false,"translate":"potion.whenDrank"}'
data modify storage tcc:temp root.item.components."minecraft:lore" append value '{"color":"blue","italic":false,"translate":"attribute.modifier.plus.0","with":[9,{"translate":"attribute.name.attack_damage"}]}'
data modify storage tcc:temp root.item.components."minecraft:item_model" set value "tcc:diluted_potion/blind_rage/main"
data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion.multiline_lore set value 1b