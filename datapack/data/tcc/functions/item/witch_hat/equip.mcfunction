############################################################
# Commands for witch hat
############################################################

advancement revoke @s only tcc:technical/inventory_changed/witch_hat/equip
stopsound @s master minecraft:item.armor.equip_leather
playsound tcc:item.armor.equip_witch_hat player @a[distance=..16]
data modify storage tcc:storage root.temp.item set from entity @s Inventory[{Slot:103b}]
item replace entity @s armor.head with minecraft:warped_fungus_on_a_stick
item modify entity @s armor.head tcc:copy_nbt
advancement grant @s only tcc:minecraft/adventure/witch_hat
