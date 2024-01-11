# Runs when the player's inventory gets a barrel with block nbt

function tcc:item/find_items/common_start {data:{tag:{BlockEntityTag:{CustomName:'{"translate":"block.tcc.pottery_table.gui","with":[{"translate":"block.tcc.pottery_table","font":"minecraft:default","color":"#3F3F3F"}],"font":"tcc:pottery_table","color":"white"}'}}},function:'tcc:item/replace_slot/main {path:"tcc:items/pottery_table"}'}

advancement revoke @s only tcc:technical/inventory_changed/pick_block/pottery_table
