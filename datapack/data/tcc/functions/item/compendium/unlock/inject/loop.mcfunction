############################################################
# Loops through the injections to use
############################################################

# Start the injection process
function tcc:item/compendium/unlock/inject/set_points with storage tcc:storage root.temp.page_injections[-1]

execute if entity @s[tag=tcc.invalid_page] run return 0

# Get an calculate the offset caused by this injection
execute store result score #temp_0 tcc.dummy run data get storage tcc:storage root.temp.page_injections[-1].injection
execute store result score #temp_1 tcc.dummy run data get storage tcc:storage root.temp.page_injections[-1].length

scoreboard players operation #temp_0 tcc.dummy -= #temp_1 tcc.dummy
# Add the offset to this page's combined offsets
scoreboard players operation #temp_combined_offset tcc.dummy += #temp_0 tcc.dummy

# Update the injection positions for this page
function tcc:item/compendium/unlock/inject/update_starts with storage tcc:storage root.temp.page_injections[-1]

# Remove this injection from the list and continue to loop
data remove storage tcc:storage root.temp.page_injections[-1]
execute if data storage tcc:storage root.temp.page_injections[-1] run function tcc:item/compendium/unlock/inject/loop
