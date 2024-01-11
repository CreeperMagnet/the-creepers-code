# Creates a new gobblerift array

data modify storage tcc:storage root.gobblerift_data set value {next_id:1,array:[]}
function tcc:block/gobblerift/array_management/add_using_next_id