# Checks if the dye is in the offhand, in which case skip the more complex dye checking algorithm

execute unless items entity @s weapon.* #tcc:dyes run function tcc:item/paintbrush/dye/set_id
execute if items entity @s weapon.offhand #tcc:dyes run return run data modify storage tcc:temp root.item.id set from entity @s Inventory[{Slot:-106b}].id
execute if items entity @s weapon.mainhand #tcc:dyes run return run data modify storage tcc:temp root.item.id set from entity @s SelectedItem.id
