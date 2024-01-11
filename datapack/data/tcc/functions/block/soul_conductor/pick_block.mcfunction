# Runs when the player's inventory gets a dropper with block nbt

function tcc:item/find_items/common_start {data:{tag:{BlockEntityTag:{Lock:"§soul_conductor\\uF001"}}},function:'tcc:item/replace_slot/main {path:"tcc:items/soul_conductor"}'}

advancement revoke @s only tcc:technical/inventory_changed/pick_block/soul_conductor
