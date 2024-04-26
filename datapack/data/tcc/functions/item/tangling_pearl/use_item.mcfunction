# Runs when right-clicking a tangling pearl

data remove storage tcc:temp root.item
execute if predicate tcc:entity_properties/slots/weapon.mainhand/tangling_pearl run data modify storage tcc:temp root.item set from entity @s SelectedItem
execute if predicate tcc:entity_properties/slots/weapon.mainhand/tangling_pearl run data modify storage tcc:temp root.item.slot set value "weapon.mainhand"
execute unless predicate tcc:entity_properties/slots/weapon.mainhand/tangling_pearl run data modify storage tcc:temp root.item set from entity @s Inventory[{Slot:-106b}]
execute unless predicate tcc:entity_properties/slots/weapon.mainhand/tangling_pearl run data modify storage tcc:temp root.item.slot set value "weapon.offhand"

function tcc:item/tangling_pearl/toggle/main

function tcc:technical/macros/loot/replace with storage tcc:temp root.item
