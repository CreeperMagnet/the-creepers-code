# Applies injections for multiple entries

# Adds a tag that prevents the entry unlock function from continuing after setting its data
# This tag also prevents the called item_found function from applying changes to the item after finishing
tag @s add tcc.tag
# Run the unlock function for this entry
$function tcc:item/compendium/unlock/entries/$(name)/unlock

# Copy the list of injections to another list, just because
data modify storage tcc:temp root.page_injections set from storage tcc:temp root.start_injection.list

# Run the function to do all the injection logic
function tcc:item/compendium/unlock/inject/item_found with storage tcc:temp root.start_injection
tag @s remove tcc.tag
# If there are still entries to unlock left, remove the tag that makes the item_found function copy data from previous books
execute if data storage tcc:temp root.entries_to_unlock[1] run tag @s remove tcc.success
