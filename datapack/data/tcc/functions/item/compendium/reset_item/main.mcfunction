# Reset all compendium items in the player's inventory

function tcc:item/get_item_pos

execute if entity @s[tag=tcc.unlockable_compendium] run data modify storage tcc:storage root.temp.item_position.path set value "tcc:technical/copy_nbt/compendium_unlockable"
execute if entity @s[tag=!tcc.unlockable_compendium] run data modify storage tcc:storage root.temp.item_position.path set value "tcc:technical/copy_nbt/compendium"
execute store result score @s tcc.dummy run data get storage tcc:storage root.temp.item.Count

# Tag so advancements won't trigger while modifying the item
tag @s add tcc.modifying_item

function tcc:item/replace_slot/replace with storage tcc:storage root.temp.item_position

tag @s remove tcc.modifying_item

execute if entity @s[tag=!tcc.unlockable_compendium] run return 1

# Update the temporary item data in storage to the newly reset compendium's data
data modify storage tcc:storage root.temp.item_position.slot set from storage tcc:storage root.temp.item.Slot
function tcc:item/compendium/reset_item/update_item_data with storage tcc:storage root.temp.item_position
