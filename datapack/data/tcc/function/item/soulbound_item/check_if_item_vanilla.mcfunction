# Checks if an item is vanilla or not

execute if data storage tcc:temp root.item.components."minecraft:custom_data".tcc run return run function tcc:item/soulbound_item/add_item_to_array
execute if data storage tcc:temp root.item.components."minecraft:custom_data" run return 0
function tcc:item/soulbound_item/add_item_to_array