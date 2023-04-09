############################################################
# Creates a new gobblerift array
############################################################

data modify storage tcc:storage root.gobblerift_data set value {next_id:1,array:[]}
function tcc:block/gobblerift/array_management/add/create_entry
data modify storage tcc:storage root.gobblerift_data.array[-1].id set value 0
data modify entity @s item.tag.id set value 0