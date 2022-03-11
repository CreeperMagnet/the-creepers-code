############################################################
# Adds an entry to the gobblerift array
############################################################

execute if data storage tcc:storage root.gobblerift_data run function tcc:block/gobblerift/array_management/add/check_existing
execute unless data storage tcc:storage root.gobblerift_data run function tcc:block/gobblerift/array_management/add/fabricate_array