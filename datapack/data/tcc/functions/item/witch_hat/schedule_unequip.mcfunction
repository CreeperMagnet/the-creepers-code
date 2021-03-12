############################################################
# Description: Commands to unequip the witch hat
# Creator: CreeperMagnet_
############################################################

advancement revoke @s only tcc:technical/item/witch_hat_unequip
function tcc:item/item_modification/inventory/setup
data modify storage tcc:storage root.inventory_temp.Inventory[{id:"minecraft:carrot_on_a_stick",tag:{tcc:{id:"witch_hat"}}}].id set value "minecraft:leather_helmet"
tag @s add tcc.scheduled.witch_hat_unequip
schedule function tcc:item/witch_hat/unequip 1t