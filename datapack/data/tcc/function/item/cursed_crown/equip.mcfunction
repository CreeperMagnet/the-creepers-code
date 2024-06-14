# Commands for cursed crown scheduling

advancement grant @s only tcc:minecraft/adventure/cursed_crown
stopsound @s master minecraft:item.armor.equip_gold
playsound tcc:item.armor.equip_cursed_crown player @a[distance=..16]

item modify entity @s armor.head {"function":"minecraft:set_item","item":"minecraft:warped_fungus_on_a_stick"}

scoreboard players set @s tcc.cursed_crown_cooldown 10
effect give @s minecraft:absorption infinite 3 true

tag @s add tcc.scheduled.cursed_crown_health_update
schedule function tcc:item/cursed_crown/update_health 2t replace

advancement revoke @s only tcc:technical/inventory_changed/cursed_crown/equip