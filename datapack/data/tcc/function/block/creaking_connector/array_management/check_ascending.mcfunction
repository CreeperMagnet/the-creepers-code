# Ensures that all connector IDs are in ascending order

execute store result score @s tcc.dummy run data get storage tcc:temp root.id
execute store result score #temp_1 tcc.dummy run data get storage tcc:creaking_connector_data next_id
execute if score @s tcc.dummy >= #temp_1 tcc.dummy run return run function tcc:block/creaking_connector/array_management/add_using_next_id
function tcc:block/creaking_connector/array_management/add with storage tcc:temp root