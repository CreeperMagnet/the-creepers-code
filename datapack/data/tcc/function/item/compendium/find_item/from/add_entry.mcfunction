# Sets a return function for each compendium that is found

data modify storage tcc:temp root.find_compendium set value {function:"tcc:item/compendium/unlock/inject/item_found with storage tcc:temp root.start_injection"}
function tcc:item/compendium/find_item/main
