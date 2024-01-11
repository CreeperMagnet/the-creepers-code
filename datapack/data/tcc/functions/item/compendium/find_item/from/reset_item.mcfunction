# Sets a return function for each compendium that is found

$data modify storage tcc:storage root.temp.find_compendium set value {function:"tcc:item/compendium/reset_item/main",id:$(id)}
function tcc:item/compendium/find_item/main
