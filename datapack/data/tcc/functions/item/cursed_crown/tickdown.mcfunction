# Ticks down the cooldown

execute if entity @s[predicate=!tcc:entity_properties/slots/armor.head/cursed_crown] run effect clear @s minecraft:absorption
execute if entity @s[predicate=!tcc:entity_properties/slots/armor.head/cursed_crown] run scoreboard players reset @s tcc.cursed_crown_cooldown
scoreboard players remove @s[scores={tcc.cursed_crown_cooldown=1..}] tcc.cursed_crown_cooldown 1
execute if entity @s[tag=tcc.cursed_crown_respawn,nbt=!{Health:0f}] run function tcc:item/cursed_crown/respawn_health_refresh
execute if score @s tcc.cursed_crown_cooldown matches ..0 run function tcc:item/cursed_crown/refresh_absorption