# Commands for unequipping a cursed crown

execute if entity @s[predicate=!tcc:entity_properties/slots/armor.head/cursed_crown] run function tcc:item/cursed_crown/unequip/remove_data
advancement revoke @s only tcc:technical/inventory_changed/cursed_crown/unequip