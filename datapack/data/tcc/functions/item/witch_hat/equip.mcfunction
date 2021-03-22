############################################################
# Description: Commands for witch hat
# Creator: CreeperMagnet_
############################################################

advancement revoke @s only tcc:technical/item/witch_hat_equip
stopsound @s master minecraft:item.armor.equip_leather
playsound tcc:item.armor.equip_witch_hat player @a[distance=..16]
data modify storage tcc:storage root.temp.item set from entity @s Inventory[{Slot:103b}]
item entity @s armor.head replace minecraft:carrot_on_a_stick
item entity @s armor.head modify tcc:copy_nbt
advancement grant @s only tcc:minecraft/adventure/witch_hat
