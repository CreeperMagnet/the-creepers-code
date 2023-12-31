############################################################
# Chooses which type of pot is used
############################################################

execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:12b,id:"minecraft:decorated_pot"}] unless data storage tcc:storage root.temp.barrel_data[1][{Slot:12b,tag:{tcc:{id:"decorated_pot"}}}] run function tcc:block/pottery_table/crafting/create_output/decorate_pot/normal
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:12b,id:"minecraft:decorated_pot",tag:{tcc:{id:"decorated_pot",type:"nether_brick"}}}] run function tcc:block/pottery_table/crafting/create_output/decorate_pot/nether_brick/main
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:12b,id:"minecraft:decorated_pot",tag:{tcc:{id:"decorated_pot",type:"prismarine"}}}] run function tcc:block/pottery_table/crafting/create_output/decorate_pot/prismarine/main
