############################################################
# Commands for cursed crown scheduling
############################################################

advancement revoke @s only tcc:technical/inventory_changed/cursed_crown/equip
advancement grant @s only tcc:minecraft/adventure/cursed_crown
stopsound @s master minecraft:item.armor.equip_gold
playsound tcc:item.armor.equip_cursed_crown player @a[distance=..16]
data modify storage tcc:storage root.temp.item set from entity @s Inventory[{Slot:103b}]
loot replace entity @s armor.head loot tcc:technical/copy_nbt/warped_fungus_on_a_stick

scoreboard players set @s tcc.cursed_crown_cooldown 10
effect give @s absorption infinite 3 true

tag @s add tcc.scheduled.cursed_crown_health_update
schedule function tcc:item/cursed_crown/update_health 2t replace
