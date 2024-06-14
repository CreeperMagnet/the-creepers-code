# Commands for witch hat

advancement grant @s only tcc:minecraft/adventure/witch_hat
stopsound @s master minecraft:item.armor.equip_leather
playsound tcc:item.armor.equip_witch_hat player @a[distance=..16]

item modify entity @s armor.head {"function":"minecraft:set_item","item":"minecraft:warped_fungus_on_a_stick"}

advancement revoke @s only tcc:technical/inventory_changed/witch_hat/equip