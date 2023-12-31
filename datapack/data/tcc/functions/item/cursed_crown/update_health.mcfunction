############################################################
# Updates health when cursed crown is equipped
############################################################

effect give @a[tag=tcc.scheduled.cursed_crown_health_update] instant_health 1 0 true
tag @a remove tcc.scheduled.cursed_crown_health_update