# Commands for unequipping a cursed crown

effect clear @s[predicate=!tcc:entity_properties/slots/armor.head/cursed_crown] absorption
tag @s[predicate=!tcc:entity_properties/slots/armor.head/cursed_crown] remove tcc.wearing_cursed_crown
advancement revoke @s only tcc:technical/inventory_changed/cursed_crown/unequip