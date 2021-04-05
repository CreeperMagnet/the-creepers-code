############################################################
# Description: Scheduled cursed crown commands
# Creator: CreeperMagnet_
############################################################

advancement revoke @s only tcc:technical/item/cursed_crown_unequip
function tcc:item/item_modification/inventory/setup
data modify storage tcc:storage root.inventory_temp.Inventory[{id:"minecraft:carrot_on_a_stick",tag:{tcc:{id:"cursed_crown"}}}].id set value "minecraft:golden_helmet"
function tcc:item/item_modification/inventory/load/non_armor
