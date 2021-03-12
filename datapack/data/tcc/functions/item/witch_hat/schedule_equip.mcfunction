############################################################
# Description: Commands for witch hat
# Creator: CreeperMagnet_
############################################################

advancement revoke @s only tcc:technical/item/witch_hat_equip
stopsound @s master minecraft:item.armor.equip_leather
playsound tcc:item.armor.equip_witch_hat player @a[distance=..16]
data modify storage tcc:storage root.inventory_temp.Inventory set from entity @s Inventory
data modify storage tcc:storage root.inventory_temp.Inventory[{Slot:103b}].id set value "minecraft:carrot_on_a_stick"
tag @s add tcc.scheduled.witch_hat_equip
schedule function tcc:item/witch_hat/equip 1t
advancement grant @s only tcc:minecraft/adventure/witch_hat