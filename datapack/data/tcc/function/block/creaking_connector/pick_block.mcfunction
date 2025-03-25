# Runs when the player's inventory gets a dropper with block nbt

function tcc:item/find_items/common_start {data:{components:{"minecraft:custom_name":{"font":"tcc:technical","translate":"block.tcc.creaking_connector.name"}}},function:'tcc:item/modify_slot/type/loot {path:"tcc:items/creaking_connector"}'}

advancement revoke @s only tcc:technical/inventory_changed/pick_block/creaking_connector
