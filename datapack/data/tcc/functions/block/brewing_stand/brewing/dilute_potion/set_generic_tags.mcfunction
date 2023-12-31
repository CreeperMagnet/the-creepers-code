############################################################
# Modifies the storage for a generic potion type
############################################################

$data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.diluted_potion.effect.$(translation)","italic":false,"color":"white"}'
$execute if score #0 tcc.dummy matches $(amplifier) run data modify storage tcc:storage root.temp.item.tag.display.Lore prepend value '{"color":"$(color)","italic":false,"translate":"potion.withDuration","with":[{"translate":"effect.minecraft.$(effect)"},{"translate":"potion.tcc.duration","with":[0,0,$(duration_0),$(duration_1)]}]}'
$execute unless score #0 tcc.dummy matches $(amplifier) run data modify storage tcc:storage root.temp.item.tag.display.Lore prepend value '{"color":"$(color)","italic":false,"translate":"potion.withDuration","with":[{"translate":"potion.withAmplifier","with":[{"translate":"effect.minecraft.$(effect)"},{"translate":"potion.potency.$(amplifier)"}]},{"translate":"potion.tcc.duration","with":[0,0,$(duration_0),$(duration_1)]}]}'
$data modify storage tcc:storage root.temp.item.tag.CustomModelData set value $(custom_model_data)
$data modify storage tcc:storage root.temp.item.tag.tcc.potion merge value {effect:"minecraft:$(effect)",duration:$(duration_0)$(duration_1),amplifier:$(amplifier)}