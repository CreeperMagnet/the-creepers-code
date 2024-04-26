# Initiates the gobblerift's tags

execute if data storage tcc:temp root.name run data modify entity @s CustomName set from storage tcc:temp root.name
data modify entity @s item.components."minecraft:custom_data".dimension set from storage tcc:temp root.dimension

execute if data storage tcc:gobblerift_data next_id if data storage tcc:temp root.id run function tcc:block/gobblerift/array_management/check_existing with storage tcc:temp root
execute if data storage tcc:gobblerift_data next_id unless data storage tcc:temp root.id run function tcc:block/gobblerift/array_management/add_using_next_id
execute unless data storage tcc:gobblerift_data next_id run function tcc:block/gobblerift/array_management/fabricate_array

data modify entity @s item.components."minecraft:custom_data".id set from storage tcc:gobblerift_data array[-1].id

execute on passengers store result score @s tcc.dummy run data get storage tcc:gobblerift_data array[-1].id
tag @s remove tcc.gobblerift.start
