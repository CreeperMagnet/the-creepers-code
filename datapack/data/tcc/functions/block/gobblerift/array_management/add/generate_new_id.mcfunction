############################################################
# Generate a new ID for the array
############################################################

data modify storage tcc:storage root.gobblerift_data.array[-1].id set from storage tcc:storage root.gobblerift_data.next_id
execute store result storage tcc:storage root.gobblerift_data.next_id int -1 run data get storage tcc:storage root.gobblerift_data.next_id -1.0000000001
