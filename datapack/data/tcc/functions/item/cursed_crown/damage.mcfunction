# Damages the cursed crown when you get hit (and resets your cooldown)

tag @s add tcc.cursed_crown_ignore_inventory_change
scoreboard players set @s tcc.cursed_crown_cooldown 10
execute if entity @s[gamemode=!creative,advancements={tcc:technical/entity_hurt_player/player_wearing_cursed_crown={hit_damage=true}}] run function tcc:item/durability/damage_generic_amount/head_1
advancement revoke @s only tcc:technical/entity_hurt_player/player_wearing_cursed_crown
tag @s remove tcc.cursed_crown_ignore_inventory_change