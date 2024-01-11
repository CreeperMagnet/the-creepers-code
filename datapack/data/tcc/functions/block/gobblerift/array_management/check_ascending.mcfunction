# Ensures that all gobblerift IDs are in ascending order

execute store result score @s tcc.dummy run data get storage tcc:storage root.temp.id
execute store result score #temp_1 tcc.dummy run data get storage tcc:storage root.gobblerift_data.next_id
execute if score @s tcc.dummy >= #temp_1 tcc.dummy run function tcc:block/gobblerift/array_management/add_using_next_id
execute unless score @s tcc.dummy >= #temp_1 tcc.dummy run function tcc:block/gobblerift/array_management/add with storage tcc:storage root.temp