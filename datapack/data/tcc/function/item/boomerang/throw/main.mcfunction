# Chooses the hand to throw from

execute if predicate tcc:entity_properties/slots/weapon.mainhand/boomerang run return run function tcc:item/boomerang/throw/macro {"slot":"weapon.mainhand","slot_raw":"SelectedItem","boomerang_slot_data":"from entity @s SelectedItemSlot"}
function tcc:item/boomerang/throw/macro {"slot":"weapon.offhand","slot_raw":"equipment.offhand","boomerang_slot_data":'value "weapon.offhand"'}