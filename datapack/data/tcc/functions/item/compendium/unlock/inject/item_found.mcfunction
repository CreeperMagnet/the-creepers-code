# Commands to run for each compendium in the inventory

# If the book already has the specified entry unlocked, return
$execute if data storage tcc:storage root.temp.item.tag.tcc{unlocked_entries:["$(entry_name)"]} run return 0

# Copy the page injections to a different path just because
execute if entity @s[tag=!tcc.success] run data modify storage tcc:storage root.temp.page_injections set from storage tcc:storage root.temp.start_injection.list
# Reset the temporary combined offset score,
# which tracks how much of an offset all injections on one page create combined
scoreboard players set #temp_combined_offset tcc.dummy 0
# Loop through the injections
execute if entity @s[tag=!tcc.success] run function tcc:item/compendium/unlock/inject/loop

execute if entity @s[tag=tcc.invalid_page] run return 0

# Update the unlocked entries list
execute if entity @s[tag=!tcc.success] run data modify storage tcc:storage root.temp.item.tag.tcc.unlocked_entries append from storage tcc:storage root.temp.start_injection.entry_name
execute if entity @s[tag=!tcc.success] store result storage tcc:storage root.temp.compendium.latest_entry_count int 1 run data get storage tcc:storage root.temp.item.tag.tcc.unlocked_entries
execute if entity @s[tag=!tcc.success] run function tcc:item/compendium/data/set/main

# If this is the first compendium in the loop, copy its data so subsequent compendiums can be modified quickly
execute if entity @s[tag=!tcc.success] run data modify storage tcc:storage root.temp.compendium_tag.unlocked_entries set from storage tcc:storage root.temp.item.tag.tcc.unlocked_entries
execute if entity @s[tag=!tcc.success] run data modify storage tcc:storage root.temp.compendium_tag.pages set from storage tcc:storage root.temp.item.tag.pages

# Modify subsequent compendiums from the data of the first compendium in the loop
execute if entity @s[tag=tcc.success] run data modify storage tcc:storage root.temp.item.tag.tcc.unlocked_entries set from storage tcc:storage root.temp.compendium_tag.unlocked_entries
execute if entity @s[tag=tcc.success] run data modify storage tcc:storage root.temp.item.tag.pages set from storage tcc:storage root.temp.compendium_tag.pages

# Add a tag to mark that all following items should copy the first item's data
tag @s add tcc.success

# Get the item position to modify
function tcc:item/get_item_pos
# Apply the changes to the compendium item
execute if entity @s[tag=!tcc.tag] run function tcc:item/compendium/unlock/inject/modify_item/main with storage tcc:storage root.temp.item_position
