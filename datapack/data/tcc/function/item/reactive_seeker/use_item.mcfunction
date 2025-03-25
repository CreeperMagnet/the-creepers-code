# Makes the reactive seeker function

data remove storage tcc:temp root
execute if predicate tcc:entity_properties/slots/weapon.mainhand/reactive_seeker run data modify storage tcc:temp root.macro_input set value {slot:"weapon.mainhand",slot_raw:"SelectedItem"}
execute unless predicate tcc:entity_properties/slots/weapon.mainhand/reactive_seeker run data modify storage tcc:temp root.macro_input set value {slot:"weapon.offhand",slot_raw:"equipment.offhand"}
function tcc:item/reactive_seeker/main_macro with storage tcc:temp root.macro_input

playsound tcc:item.reactive_seeker.use player @a[distance=..16]
advancement grant @s only tcc:minecraft/nether/reactive_seeker