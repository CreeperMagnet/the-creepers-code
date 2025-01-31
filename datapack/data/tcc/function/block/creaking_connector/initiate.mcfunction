# Initiates the creaking connector's tags

execute if data storage tcc:temp root.name run data modify entity @s CustomName set from storage tcc:temp root.name

execute if data storage tcc:creaking_connector_data next_id if data storage tcc:temp root.id run function tcc:block/creaking_connector/array_management/check_existing with storage tcc:temp root
execute if data storage tcc:creaking_connector_data next_id unless data storage tcc:temp root.id run function tcc:block/creaking_connector/array_management/add_using_next_id
execute unless data storage tcc:creaking_connector_data next_id run function tcc:block/creaking_connector/array_management/fabricate_array

data modify entity @s item.components."minecraft:custom_data".id set from storage tcc:creaking_connector_data array[-1].id
data modify block ~ ~ ~ components."minecraft:custom_data".id set from storage tcc:creaking_connector_data array[-1].id
data modify block ~ ~ ~ components."minecraft:custom_data".name set from storage tcc:temp root.name

tag @s remove tcc.creaking_connector.initiate
