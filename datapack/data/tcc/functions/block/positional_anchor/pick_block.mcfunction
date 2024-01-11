# Runs when the player's inventory gets a dropper with block nbt

function tcc:item/find_items/common_start {data:{tag:{BlockEntityTag:{Lock:"§positional_anchor\\uF001"}}},function:'tcc:item/replace_slot/main {path:"tcc:items/positional_anchor"}'}

advancement revoke @s only tcc:technical/inventory_changed/pick_block/positional_anchor
