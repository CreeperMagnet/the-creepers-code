############################################################
# Chooses which recipe style to use
############################################################

execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:12b,id:"minecraft:decorated_pot"}] run function tcc:block/pottery_table/crafting/create_output/decorate_pot/main
execute unless data storage tcc:storage root.temp.barrel_data[1][{Slot:12b,id:"minecraft:decorated_pot"}] run function tcc:block/pottery_table/crafting/create_output/duplicate_sherd/main