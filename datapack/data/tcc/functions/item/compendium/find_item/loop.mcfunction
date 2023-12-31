############################################################
# Runs a function for each compendium that is found in the player's inventory
############################################################

# Set the temporary item data and remove this inventory entry from the temporary list
data modify storage tcc:storage root.temp.item set from storage tcc:storage root.temp.inventory[-1]
data remove storage tcc:storage root.temp.inventory[-1]

# Run the specified function
$function $(function)

# If there still are more compendium items, continue
$execute if data storage tcc:storage root.temp.inventory[-1] run function tcc:item/compendium/find_item/loop {function:"$(function)"}
