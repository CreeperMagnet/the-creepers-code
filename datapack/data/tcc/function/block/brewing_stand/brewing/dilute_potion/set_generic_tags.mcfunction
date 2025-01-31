# Modifies the storage for a generic potion type
$data modify storage tcc:temp root.item.components."minecraft:item_name" set value '{"translate":"item.tcc.diluted_potion.effect.$(translation)"}'
$execute if score #0 tcc.dummy matches $(amplifier) run data modify storage tcc:temp root.item.components."minecraft:lore" prepend value '{"color":"$(lore_color)","italic":false,"translate":"potion.withDuration","with":[{"translate":"effect.minecraft.$(effect)"},{"translate":"potion.tcc.duration","with":[0,0,$(duration_0),$(duration_1)]}]}'
$execute unless score #0 tcc.dummy matches $(amplifier) run data modify storage tcc:temp root.item.components."minecraft:lore" prepend value '{"color":"$(lore_color)","italic":false,"translate":"potion.withDuration","with":[{"translate":"potion.withAmplifier","with":[{"translate":"effect.minecraft.$(effect)"},{"translate":"potion.potency.$(amplifier)"}]},{"translate":"potion.tcc.duration","with":[0,0,$(duration_0),$(duration_1)]}]}'
$data modify storage tcc:temp root.item.components."minecraft:custom_model_data".colors[0] set value $(color)
$data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion merge value {effect:"minecraft:$(effect)",duration:$(duration_0)$(duration_1),amplifier:$(amplifier)}