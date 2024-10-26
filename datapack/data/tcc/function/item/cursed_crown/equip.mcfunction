# Commands for cursed crown scheduling

advancement grant @s only tcc:minecraft/adventure/cursed_crown

scoreboard players set @s tcc.cursed_crown_cooldown 10
effect give @s minecraft:absorption infinite 3 true

tag @s add tcc.scheduled.cursed_crown_health_update
schedule function tcc:item/cursed_crown/update_health 2t replace
tag @s add tcc.wearing_cursed_crown

advancement revoke @s only tcc:technical/inventory_changed/cursed_crown/equip