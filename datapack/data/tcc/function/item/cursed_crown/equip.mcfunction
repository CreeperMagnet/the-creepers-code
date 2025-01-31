# Commands for cursed crown scheduling

advancement grant @s only tcc:minecraft/adventure/cursed_crown

scoreboard players set @s tcc.cursed_crown_cooldown 0
tag @s add tcc.wearing_cursed_crown
function tcc:item/cursed_crown/absorption/set_maximum

advancement revoke @s only tcc:technical/inventory_changed/cursed_crown/equip