############################################################
# Adds vanilla items to the pool to repair
############################################################

execute if entity @s[predicate=tcc:entity/holding/mending_item/vanilla/mainhand] run data modify storage tcc:storage root.temp.equipment.list append value "vanilla_mainhand"
execute if entity @s[predicate=tcc:entity/holding/mending_item/vanilla/offhand] run data modify storage tcc:storage root.temp.equipment.list append value "vanilla_offhand"
execute if entity @s[predicate=tcc:entity/holding/mending_item/vanilla/head] run data modify storage tcc:storage root.temp.equipment.list append value "vanilla_head"
execute if entity @s[predicate=tcc:entity/holding/mending_item/vanilla/chest] run data modify storage tcc:storage root.temp.equipment.list append value "vanilla_chest"
execute if entity @s[predicate=tcc:entity/holding/mending_item/vanilla/legs] run data modify storage tcc:storage root.temp.equipment.list append value "vanilla_legs"
execute if entity @s[predicate=tcc:entity/holding/mending_item/vanilla/feet] run data modify storage tcc:storage root.temp.equipment.list append value "vanilla_feet"
