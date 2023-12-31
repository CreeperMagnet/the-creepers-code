############################################################
# Refreshes health and absorption on respawn
############################################################

effect give @s absorption infinite 3 true
tag @s add tcc.scheduled.cursed_crown_health_update
schedule function tcc:item/cursed_crown/update_health 2t replace
tag @s remove tcc.cursed_crown_respawn