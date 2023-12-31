############################################################
# Sets a return function for each compendium that is found
############################################################

data modify storage tcc:storage root.temp.find_compendium set value {function:"tcc:item/compendium/update_unlocks/item_found with storage tcc:storage root.temp.manage_data"}
function tcc:item/compendium/find_item/main
