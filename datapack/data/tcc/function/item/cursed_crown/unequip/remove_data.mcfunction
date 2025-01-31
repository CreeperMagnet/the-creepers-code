# Removes tags when you take off the cursed crown

attribute @s minecraft:max_health modifier remove tcc:cursed_crown
attribute @s minecraft:max_absorption modifier remove tcc:cursed_crown
tag @s remove tcc.wearing_cursed_crown
scoreboard players reset @s tcc.cursed_crown_cooldown