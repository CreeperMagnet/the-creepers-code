# Commands for unequipping a cursed crown

advancement revoke @s only tcc:technical/inventory_changed/cursed_crown/unequip
effect clear @s[predicate=!tcc:entity/wearing/cursed_crown] absorption

data remove storage tcc:storage root.temp

function tcc:item/find_items/common_start {data:{id:"minecraft:warped_fungus_on_a_stick",tag:{tcc:{id:"cursed_crown"}}},function:'tcc:item/replace_slot/main {path:"tcc:technical/copy_nbt/golden_helmet"}'}
