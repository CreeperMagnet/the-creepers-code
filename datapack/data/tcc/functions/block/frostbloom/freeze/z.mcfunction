############################################################
# Determines the z axis of the point to freeze
############################################################

execute if score #temp_2 tcc.dummy matches 1 positioned ~ ~ ~-2 run function tcc:block/frostbloom/freeze/execute
execute if score #temp_2 tcc.dummy matches 2 positioned ~ ~ ~-1 run function tcc:block/frostbloom/freeze/execute
execute if score #temp_2 tcc.dummy matches 3 positioned ~ ~ ~ run function tcc:block/frostbloom/freeze/execute
execute if score #temp_2 tcc.dummy matches 4 positioned ~ ~ ~1 run function tcc:block/frostbloom/freeze/execute
execute if score #temp_2 tcc.dummy matches 5 positioned ~ ~ ~2 run function tcc:block/frostbloom/freeze/execute