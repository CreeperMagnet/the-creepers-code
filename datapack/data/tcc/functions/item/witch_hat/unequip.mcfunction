# Commands for unequipping a cursed crown

advancement revoke @s only tcc:technical/inventory_changed/witch_hat/unequip

data remove storage tcc:storage root.temp

function tcc:item/find_items/common_start {data:{id:"minecraft:warped_fungus_on_a_stick",tag:{tcc:{id:"witch_hat"}}},function:'tcc:item/replace_slot/main {path:"tcc:technical/copy_nbt/leather_helmet"}'}
