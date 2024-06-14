# Takes experience from the locket

# Stop if locket is empty
execute if score #temp_0 tcc.dummy matches 0 run return 0

# Two different xp orb spawning cases
execute if score #temp_0 tcc.dummy matches ..30 run function tcc:item/locket_of_learning/withdraw/macro with storage tcc:temp root.item.components."minecraft:custom_data".tcc
execute if score #temp_0 tcc.dummy matches 31.. run function tcc:item/locket_of_learning/withdraw/default

# Modifying item macro
function tcc:item/locket_of_learning/modify_item with storage tcc:temp root.item