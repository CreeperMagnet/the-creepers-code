# Checks if an entry already exists in the array or not

$execute if data storage tcc:gobblerift_data array[{id:$(id)}] run function tcc:block/gobblerift/array_management/add_using_next_id
$execute unless data storage tcc:gobblerift_data array[{id:$(id)}] run function tcc:block/gobblerift/array_management/check_ascending