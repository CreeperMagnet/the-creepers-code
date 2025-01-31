# Modifies the storage for a specific potion type

data modify storage tcc:temp root.item.components."minecraft:item_name" set value '{"translate":"item.tcc.diluted_potion.effect.turtle_master"}'
data modify storage tcc:temp root.item.components."minecraft:lore" prepend value '{"color":"blue","italic":false,"translate":"potion.withDuration","with":[{"translate":"potion.withAmplifier","with":[{"translate":"effect.minecraft.resistance"},{"translate":"potion.potency.2"}]},{"translate":"potion.tcc.duration","with":["0","0","0","4"]}]}'
data modify storage tcc:temp root.item.components."minecraft:lore" prepend value '{"color":"red","italic":false,"translate":"potion.withDuration","with":[{"translate":"potion.withAmplifier","with":[{"translate":"effect.minecraft.slowness"},{"translate":"potion.potency.3"}]},{"translate":"potion.tcc.duration","with":["0","0","0","4"]}]}'
data modify storage tcc:temp root.item.components."minecraft:lore" append value '{"text":""}'
data modify storage tcc:temp root.item.components."minecraft:lore" append value '{"color":"dark_purple","italic":false,"translate":"potion.whenDrank"}'
data modify storage tcc:temp root.item.components."minecraft:lore" append value '{"color":"red","italic":false,"translate":"attribute.modifier.take.1","with":["60",{"translate":"attribute.name.movement_speed"}]}'
data modify storage tcc:temp root.item.components."minecraft:custom_model_data".colors[0] set value 9274854
data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion.multiline_lore set value 1b