# Processes a zombie

execute if predicate tcc:entity_properties/holding_mace_in_trial_chambers run data modify entity @s drop_chances.mainhand set value 0.1f
execute if entity @s[predicate=tcc:location_check/below_0,predicate=tcc:random_chance/0.1] if dimension minecraft:overworld unless entity @a[distance=..20] run function tcc:entity/zombie/make_glow_lichen_zombie
execute if entity @s[predicate=tcc:random_chance/0.00390625,predicate=tcc:entity_properties/slots/weapon.mainhand/air] run loot replace entity @s weapon.mainhand loot tcc:items/wrench

tag @s add tcc.modified_vanilla_entity