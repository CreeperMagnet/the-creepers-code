# Refreshes health and absorption on respawn

scoreboard players set @s tcc.cursed_crown_cooldown 0
function tcc:item/cursed_crown/absorption/set_maximum
tag @s remove tcc.cursed_crown_respawn