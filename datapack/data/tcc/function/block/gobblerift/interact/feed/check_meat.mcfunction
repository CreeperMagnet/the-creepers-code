# Verifies the item for gobblerift feeding

data modify storage tcc:temp root.meat set value 1b
execute if data storage tcc:temp root.item.components."minecraft:custom_data".tcc.gobblerift_meat run return 0
execute if data storage tcc:temp root.item.components."minecraft:custom_data" run data modify storage tcc:temp root.meat set value 0b
execute if data storage tcc:temp root.item.components."minecraft:custom_data" run data remove storage tcc:temp root.item
