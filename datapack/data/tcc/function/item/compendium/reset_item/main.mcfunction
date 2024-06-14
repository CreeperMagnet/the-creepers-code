# Reset all compendium items in the player's inventory

execute store result score @s tcc.dummy run data get storage tcc:temp root.item.count

# Tag so advancements won't trigger while modifying the item
tag @s add tcc.modifying_item

execute if entity @s[tag=tcc.unlockable_compendium] run function tcc:item/modify_slot/type/loot {path:"tcc:technical/copy_count/compendium_unlockable"}
execute if entity @s[tag=!tcc.unlockable_compendium] run function tcc:item/modify_slot/type/loot {path:"tcc:technical/copy_count/compendium"}

execute if entity @s[tag=!tcc.unlockable_compendium] run tag @s remove tcc.modifying_item
execute if entity @s[tag=!tcc.unlockable_compendium] run return 1

# Set the owner separately
data modify storage tcc:temp root.macro_input.uuid set from entity @s UUID
function tcc:item/compendium/reset_item/set_owner with storage tcc:temp root.macro_input

tag @s remove tcc.modifying_item

# Update the temporary item data in storage to the newly reset compendium's data
data modify storage tcc:temp root.macro_input.slot set from storage tcc:temp root.item.Slot
function tcc:item/update_item_data with storage tcc:temp root.macro_input
