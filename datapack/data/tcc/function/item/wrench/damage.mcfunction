# Damages the wrench

execute if predicate tcc:entity_properties/slots/weapon.mainhand/wrench run function tcc:technical/macros/damage_slot/main {slot:"weapon.mainhand",slot_raw:"SelectedItem",amount:"1"}
execute unless predicate tcc:entity_properties/slots/weapon.mainhand/wrench run function tcc:technical/macros/damage_slot/main {slot:"weapon.offhand",slot_raw:"equipment.offhand",amount:"1"}
