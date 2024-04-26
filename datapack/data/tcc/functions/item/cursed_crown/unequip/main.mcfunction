# Commands for unequipping a cursed crown

effect clear @s[predicate=!tcc:entity_properties/slots/armor.head/cursed_crown] absorption

data remove storage tcc:temp root

function tcc:item/find_items/common_start {data:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{tcc:{id:"cursed_crown"}}}},function:'tcc:item/cursed_crown/unequip/replace_wfoas_with_golden_helmet'}

advancement revoke @s only tcc:technical/inventory_changed/cursed_crown/unequip