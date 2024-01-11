# Reset all unlocked entry data

# Revoke all entry unlock advancements
execute if data storage tcc:storage root.temp.compendium run advancement revoke @s through tcc:compendium/root

# Reset the list of unlocked entries
data modify storage tcc:storage root.temp.compendium set value {unlocked_entries:[]}

# Reset all injection start values
# (This function isn't commented because it is generated)
function tcc:item/compendium/data/reset_starts

# Reset compendium mode to unlockable
tag @s add tcc.unlockable_compendium
# Save storage changes
function tcc:item/compendium/data/set/main
