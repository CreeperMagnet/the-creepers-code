# Runs when the player's inventory gets a dropper with block nbt

function tcc:item/find_items/common_start {data:{components:{"minecraft:custom_name":'{"font":"tcc:technical","translate":"block.tcc.soul_seer.name"}'}},function:'tcc:item/modify_slot/type/loot {path:"tcc:items/soul_seer"}'}

advancement revoke @s only tcc:technical/inventory_changed/pick_block/soul_seer
