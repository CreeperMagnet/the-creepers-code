# Checks if the dye is in the offhand, in which case skip the more complex dye checking algorithm

execute unless predicate tcc:entity/holding/dyes/offhand unless predicate tcc:entity/holding/dyes/mainhand run function tcc:item/paintbrush/dye/set_id
execute if predicate tcc:entity/holding/dyes/mainhand run data modify storage tcc:storage root.temp.item.id set from entity @s SelectedItem.id
execute if predicate tcc:entity/holding/dyes/offhand run data modify storage tcc:storage root.temp.item.id set from entity @s Inventory[{Slot:-106b}].id
