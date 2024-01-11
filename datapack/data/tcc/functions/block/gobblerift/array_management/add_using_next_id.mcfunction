# Adds a value to the array using the next id

data remove storage tcc:storage root.temp.macro_input
data modify storage tcc:storage root.temp.macro_input.id set from storage tcc:storage root.gobblerift_data.next_id
function tcc:block/gobblerift/array_management/add with storage tcc:storage root.temp.macro_input
execute store result storage tcc:storage root.gobblerift_data.next_id int -1 run data get storage tcc:storage root.gobblerift_data.next_id -1.0000000001