# Runs when the player's inventory gets a dropper with block nbt

function tcc:item/find_items/common_start {data:{components:{"minecraft:lock":"§positional_anchor\\uF001"}},function:'tcc:item/modify_slot/type/loot {path:"tcc:items/positional_anchor"}'}

advancement revoke @s only tcc:technical/inventory_changed/pick_block/positional_anchor
