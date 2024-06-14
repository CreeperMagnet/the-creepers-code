# Makes the weeping eye function

data remove storage tcc:temp root
execute if predicate tcc:entity_properties/slots/weapon.mainhand/weeping_eye run data modify storage tcc:temp root.macro_input set value {slot:"weapon.mainhand",slot_raw:"SelectedItem"}
execute unless predicate tcc:entity_properties/slots/weapon.mainhand/weeping_eye run data modify storage tcc:temp root.macro_input set value {slot:"weapon.offhand",slot_raw:"Inventory[{Slot:-106b}]"}
function tcc:item/weeping_eye/main_macro with storage tcc:temp root.macro_input

# Random effects
playsound tcc:item.weeping_eye.use player @a[distance=..16]