############################################################
# Commands for cursed crown scheduling
############################################################

advancement revoke @s only tcc:technical/inventory_changed/cursed_crown/equip
advancement grant @s only tcc:minecraft/nether/cursed_crown
stopsound @s master minecraft:item.armor.equip_gold
playsound tcc:item.armor.equip_cursed_crown player @a[distance=..16]
data modify storage tcc:storage root.temp.item set from entity @s Inventory[{Slot:103b}]
loot replace entity @s armor.head loot tcc:technical/copy_nbt/warped_fungus_on_a_stick
