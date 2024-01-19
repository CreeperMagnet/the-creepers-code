# Duplicates a sherd based on several factors

execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:12b,tag:{tcc:{id:"pottery_sherd",type:"nether_brick"}}}] run function tcc:block/pottery_table/crafting/create_output/duplicate_sherd/nether_brick
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:12b,tag:{tcc:{id:"pottery_sherd",type:"prismarine"}}}] run function tcc:block/pottery_table/crafting/create_output/duplicate_sherd/prismarine
execute unless data storage tcc:storage root.temp.barrel_data[1][{Slot:12b,tag:{tcc:{id:"pottery_sherd"}}}] run function tcc:block/pottery_table/crafting/create_output/duplicate_sherd/normal