############################################################
# Updates unlocked entries for outdated books
############################################################

scoreboard players set #temp_0 tcc.dummy 0

# Get the amount of unlocked entries for both the player and the compendium item
function tcc:item/compendium/data/get/main
execute store result score #temp_1 tcc.dummy run data get storage tcc:storage root.temp.compendium.unlocked_entries
execute store result score #temp_2 tcc.dummy run data get storage tcc:storage root.temp.item.tag.tcc.unlocked_entries

## Checks for if the injection start points need to be updated

# Check if the item doesn't have an owner that matches this player's UUID
$execute unless data storage tcc:storage root.temp.item.tag.tcc{owner:$(uuid)} run scoreboard players set #temp_0 tcc.dummy 1

# Check if the global compendium version and the item's compendium version don't match
function tcc:item/compendium/update_unlocks/check_version

# Check if the compendium item's entry count is less than the previously updated compendium's entry count
execute store result score #temp_3 tcc.dummy run data get storage tcc:storage root.temp.compendium.latest_entry_count
execute if score #temp_2 tcc.dummy < #temp_3 tcc.dummy run scoreboard players set #temp_0 tcc.dummy 1

# Alternatively, if the book had 0 unlocked entries, the injection start values also need to be reset to default
execute if score #temp_2 tcc.dummy matches 0 run scoreboard players set #temp_0 tcc.dummy 1

# If the player somehow has less unlocked entries than the compendium, it will also need to be updated
execute if score #temp_1 tcc.dummy < #temp_2 tcc.dummy run scoreboard players set #temp_0 tcc.dummy 1

## Return point
# If the score is 0 and the player has the same amount of unlocked entries as the book NBT, return
execute if score #temp_0 tcc.dummy matches 0 if score #temp_1 tcc.dummy = #temp_2 tcc.dummy run return 0

## Continuation

# Copy the player's list of unlocked entries
# This needs to be before the call below, due to it overwriting the temporary data this line copies
data modify storage tcc:storage root.temp.entries_to_unlock set from storage tcc:storage root.temp.compendium.unlocked_entries

# If the item needed to be reset and it can't be copied from previous items, reset all stored injection start values
execute if score #temp_0 tcc.dummy matches 1 if entity @s[tag=!tcc.success] run function tcc:item/compendium/data/reset_starts

# Reset the item
# Resetting the item isn't necessary if it just needs to fill up on missing entries
# This uses the temp_0 score, which is why it's last
execute if score #temp_0 tcc.dummy matches 1 run function tcc:item/compendium/reset_item/main


# Unlock the specified entries
function tcc:item/compendium/unlock/unlock_multiple/loop

# Get the item position to modify
function tcc:item/compendium/get_item_pos
# Apply the changes to the item
function tcc:item/compendium/unlock/inject/modify_item/main with storage tcc:storage root.temp.item_position
