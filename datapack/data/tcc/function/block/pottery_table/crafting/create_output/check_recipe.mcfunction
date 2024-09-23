# Chooses which recipe style to use

# If none of the slots are filled, return
execute unless data storage tcc:temp root.barrel_data[1][{Slot:3b}] unless data storage tcc:temp root.barrel_data[1][{Slot:11b}] unless data storage tcc:temp root.barrel_data[1][{Slot:13b}] unless data storage tcc:temp root.barrel_data[1][{Slot:21b}] run return 0

# If decorated pot, decorate pot
execute if data storage tcc:temp root.barrel_data[1][{Slot:12b,id:"minecraft:decorated_pot"}] run return run function tcc:block/pottery_table/crafting/create_output/decorate_pot/main

# Otherwise, it's sherd duplication
function tcc:block/pottery_table/crafting/create_output/duplicate_sherd