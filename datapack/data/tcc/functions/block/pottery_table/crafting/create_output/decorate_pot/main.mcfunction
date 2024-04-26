# Chooses which type of pot is used

execute if data storage tcc:temp root.barrel_data[1][{Slot:12b,id:"minecraft:decorated_pot",components:{"minecraft:custom_data":{tcc:{id:"decorated_pot",type:"nether_brick"}}}}] run return run function tcc:block/pottery_table/crafting/create_output/decorate_pot/nether_brick/main
execute if data storage tcc:temp root.barrel_data[1][{Slot:12b,id:"minecraft:decorated_pot",components:{"minecraft:custom_data":{tcc:{id:"decorated_pot",type:"prismarine"}}}}] run return run function tcc:block/pottery_table/crafting/create_output/decorate_pot/prismarine/main
function tcc:block/pottery_table/crafting/create_output/decorate_pot/normal
