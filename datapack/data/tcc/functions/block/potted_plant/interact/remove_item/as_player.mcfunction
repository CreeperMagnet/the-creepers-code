# Removes item, commands to run as player

execute unless data storage tcc:storage root.temp.item.tag run data modify storage tcc:storage root.temp.item.tag set value ""
function tcc:block/potted_plant/interact/remove_item/replace_macro with storage tcc:storage root.temp.item