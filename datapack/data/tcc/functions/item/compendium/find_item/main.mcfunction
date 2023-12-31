############################################################
# Runs a function for each compendium that is found in the player's inventory
############################################################

# If there isn't a set ID to look for, default to the unlockable compendium
execute unless data storage tcc:storage root.temp.find_compendium.id run data modify storage tcc:storage root.temp.find_compendium.id set value "unlockable_compendium"

function tcc:item/compendium/find_item/start with storage tcc:storage root.temp.find_compendium
