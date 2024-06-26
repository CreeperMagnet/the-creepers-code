# Offset each entry after the modified entry on the same page

# Copy the list of start values on this page
$data modify storage tcc:temp root.starts set from storage tcc:temp root.compendium.page_starts[{page:$(page)}].starts
# List size
execute store result score #temp_2 tcc.dummy run data get storage tcc:temp root.starts
# Reset variables
scoreboard players set #temp_0 tcc.dummy 0
scoreboard players set #temp_1 tcc.dummy 0
scoreboard players set #temp_offset tcc.dummy 0

# Start the loop
function tcc:item/compendium/data/update_starts/loop

# Save the modified list
$data modify storage tcc:temp root.compendium.page_starts[{page:$(page)}].starts set from storage tcc:temp root.starts
function tcc:item/compendium/data/set/main
