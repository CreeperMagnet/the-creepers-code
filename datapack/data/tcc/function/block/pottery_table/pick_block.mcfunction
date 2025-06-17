# Runs when the player's inventory gets a barrel with block nbt

function tcc:item/find_items/common_start {data:{components:{"minecraft:custom_data":{tcc:{block_id:"pottery_table"}}}},function:'tcc:item/modify_slot/type/loot {path:"tcc:items/pottery_table"}'}

advancement revoke @s only tcc:technical/inventory_changed/pick_block/pottery_table
