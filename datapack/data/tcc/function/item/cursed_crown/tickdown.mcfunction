# Ticks down the cooldown for players with tcc.cursed_crown_cooldown = 1..

execute if entity @s[predicate=!tcc:entity_properties/slots/armor.head/cursed_crown] run function tcc:item/cursed_crown/unequip/remove_data
execute unless score @s tcc.cursed_crown_cooldown matches 1.. run return fail
scoreboard players remove @s tcc.cursed_crown_cooldown 1
execute if entity @s[tag=tcc.cursed_crown_respawn,nbt=!{Health:0f}] run function tcc:item/cursed_crown/player_dies_keep_inventory/refresh
execute if score @s tcc.cursed_crown_cooldown matches ..0 run function tcc:item/cursed_crown/refresh