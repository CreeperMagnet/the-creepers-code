# A scheduled function that gives players instant health so their hearts update properly

effect give @a[tag=tcc.scheduled.cursed_crown_health_update] minecraft:instant_health 1 0 true
tag @a remove tcc.scheduled.cursed_crown_health_update