# Runs a function for each item that is found in the player's inventory

# Set the temporary item data and remove this inventory entry from the temporary list
data modify storage tcc:temp root.item set from storage tcc:temp root.inventory[-1]
data remove storage tcc:temp root.inventory[-1]

# Run the specified function
$function $(function)

# If there still are more items, continue
$execute if data storage tcc:temp root.inventory[-1] run function tcc:item/find_items/loop {function:'$(function)'}
