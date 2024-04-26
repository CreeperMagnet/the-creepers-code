# Duplicates a sherd based on several factors

execute if data storage tcc:temp root.barrel_data[1][{Slot:12b,components:{"minecraft:custom_data":{tcc:{id:"pottery_sherd",type:"nether_brick"}}}}] run return run function tcc:block/pottery_table/crafting/create_output/duplicate_sherd/nether_brick
execute if data storage tcc:temp root.barrel_data[1][{Slot:12b,components:{"minecraft:custom_data":{tcc:{id:"pottery_sherd",type:"prismarine"}}}}] run return run function tcc:block/pottery_table/crafting/create_output/duplicate_sherd/prismarine
function tcc:block/pottery_table/crafting/create_output/duplicate_sherd/normal