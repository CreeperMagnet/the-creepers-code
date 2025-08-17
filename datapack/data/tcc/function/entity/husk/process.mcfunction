# Processes a husk

execute if predicate tcc:entity_properties/holding_mace_in_trial_chambers run data modify entity @s drop_chances.mainhand set value 0.1f
tag @s add tcc.modified_vanilla_entity