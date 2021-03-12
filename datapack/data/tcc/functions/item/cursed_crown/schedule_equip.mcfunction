############################################################
# Description: Commands for wearing cursed crown
# Creator: CreeperMagnet_
############################################################

advancement revoke @s only tcc:technical/item/cursed_crown_equip
stopsound @s master minecraft:item.armor.equip_gold
playsound tcc:item.armor.equip_cursed_crown player @a[distance=..16]
data modify storage tcc:storage root.inventory_temp.Inventory set from entity @s Inventory
data modify storage tcc:storage root.inventory_temp.Inventory[{Slot:103b}].id set value "minecraft:carrot_on_a_stick"
tag @s add tcc.scheduled.cursed_crown_equip
schedule function tcc:item/cursed_crown/equip 1t