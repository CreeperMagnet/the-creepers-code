############################################################
# Description: Commands to unequip the witch hat
# Creator: CreeperMagnet_
############################################################

advancement revoke @s only tcc:technical/item/witch_hat_unequip
function tcc:item/item_modification/inventory/setup
data modify storage tcc:storage root.inventory_temp.Inventory[{id:"minecraft:carrot_on_a_stick",tag:{tcc:{id:"witch_hat"}}}].id set value "minecraft:leather_helmet"
function tcc:item/item_modification/inventory/load/non_armor
