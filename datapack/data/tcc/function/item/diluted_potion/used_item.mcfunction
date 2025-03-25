# Makes diluted potions function

data remove storage tcc:temp root
execute if entity @s[predicate=tcc:entity_properties/slots/weapon.mainhand/diluted_potion] run return run function tcc:item/diluted_potion/main_macro {"slot":"weapon.mainhand","slot_raw":"SelectedItem"}
function tcc:item/diluted_potion/main_macro {"slot":"weapon.offhand","slot_raw":"equipment.offhand"}