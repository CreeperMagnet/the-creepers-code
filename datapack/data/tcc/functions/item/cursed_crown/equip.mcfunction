############################################################
# Description: Commands for cursed crown scheduling
# Creator: CreeperMagnet_
############################################################

advancement revoke @s only tcc:technical/item/cursed_crown_equip
stopsound @s master minecraft:item.armor.equip_gold
playsound tcc:item.armor.equip_cursed_crown player @a[distance=..16]
data modify storage tcc:storage root.temp.item set from entity @s Inventory[{Slot:103b}]
item entity @s armor.head replace minecraft:carrot_on_a_stick
item entity @s armor.head modify tcc:copy_nbt
