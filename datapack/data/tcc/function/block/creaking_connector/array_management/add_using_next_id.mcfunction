# Adds a value to the array using the next id

data remove storage tcc:temp root.macro_input
data modify storage tcc:temp root.macro_input.id set from storage tcc:creaking_connector_data next_id
function tcc:block/creaking_connector/array_management/add with storage tcc:temp root.macro_input

# Increment the next_id value
execute store result score @s tcc.dummy run data get storage tcc:creaking_connector_data next_id
execute store result storage tcc:creaking_connector_data next_id int 1 run scoreboard players add @s tcc.dummy 1