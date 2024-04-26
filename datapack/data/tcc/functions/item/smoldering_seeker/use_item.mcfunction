# Makes the smoldering seeker function

data remove storage tcc:temp root
execute if predicate tcc:entity_properties/slots/weapon.mainhand/smoldering_seeker run data modify storage tcc:temp root.macro_input set value {slot:"weapon.mainhand",slot_raw:"SelectedItem"}
execute unless predicate tcc:entity_properties/slots/weapon.mainhand/smoldering_seeker run data modify storage tcc:temp root.macro_input set value {slot:"weapon.offhand",slot_raw:"Inventory[{Slot:-106b}]"}
function tcc:item/smoldering_seeker/main_macro with storage tcc:temp root.macro_input

# Random effects
playsound tcc:item.smoldering_seeker.use player @a[distance=..16]
advancement grant @s only tcc:minecraft/nether/smoldering_seeker

