# Get player compendium data

# Remove the result path
data remove storage tcc:temp root.compendium
# Copy the player's data to the result path
$data modify storage tcc:temp root.compendium set from storage tcc:compendium player_data[{uuid:$(uuid)}]

# If the player's data exists and has been grabbed, return
execute if data storage tcc:temp root.compendium run return 1
# If the player's data doesn't exist, but the player has the tag tcc.dont_set_data, return anyway
execute if entity @s[tag=tcc.dont_set_data] run return 0

# Set new data for player's without it
$data modify storage tcc:compendium player_data append value {uuid:$(uuid)}
function tcc:item/compendium/data/reset_all
