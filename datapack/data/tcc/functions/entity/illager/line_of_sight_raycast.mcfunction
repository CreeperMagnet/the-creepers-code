# Finds the player an illager is looking at

execute if entity @e[predicate=tcc:entity_properties/targeted_by_illagers,distance=..2] run return run tag @s add tcc.has_line_of_sight
execute if entity @s[distance=..16,tag=!tcc.has_line_of_sight] if block ^ ^ ^0.05 #tcc:seethrough positioned ^ ^ ^0.05 run function tcc:entity/illager/line_of_sight_raycast
