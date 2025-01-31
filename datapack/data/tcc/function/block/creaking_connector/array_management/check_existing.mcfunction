# Checks if an entry already exists in the array or not

$execute if data storage tcc:creaking_connector_data array[{id:$(id)}] run function tcc:block/creaking_connector/array_management/add_using_next_id
$execute unless data storage tcc:creaking_connector_data array[{id:$(id)}] run function tcc:block/creaking_connector/array_management/check_ascending