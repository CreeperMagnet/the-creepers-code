# Add the entry and find all compendium items

execute if entity @s[tag=tcc.tag] run return 0

# Important for multiplayer compat
data modify storage tcc:storage root.temp.manage_data.uuid set from entity @s UUID

# Add the entry to the player's list of unlocked entries
function tcc:item/compendium/data/get/main
$execute unless data storage tcc:storage root.temp.compendium{unlocked_entries:["$(entry_name)"]} run data modify storage tcc:storage root.temp.compendium.unlocked_entries append from storage tcc:storage root.temp.start_injection.entry_name
function tcc:item/compendium/data/set/main
# Return if the player doesn't have their compendium in unlockable mode
execute if entity @s[tag=!tcc.unlockable_compendium] run return 0

# Remove the temporary NBT for compendium data, which is used to easily update subsequent items
data remove storage tcc:storage root.temp.compendium_tag

# Loop through all the player's compendiums
function tcc:item/compendium/find_item/from/add_entry

# Remove tcc.success, which is used to mark that one compendium already has been updated
tag @s remove tcc.success
# Remove tcc.invalid_page, which is used to mark that an invalid JSON page has been found
tag @s remove tcc.invalid_page
