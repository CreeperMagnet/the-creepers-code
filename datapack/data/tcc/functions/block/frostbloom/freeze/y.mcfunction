############################################################
# Determines the y axis of the point to freeze
############################################################

execute if score #temp_1 tcc.dummy matches 1 positioned ~ ~-1 ~ run function tcc:block/frostbloom/freeze/z
execute if score #temp_1 tcc.dummy matches 2 positioned ~ ~ ~ run function tcc:block/frostbloom/freeze/z
execute if score #temp_1 tcc.dummy matches 3 positioned ~ ~1 ~ run function tcc:block/frostbloom/freeze/z
execute if score #temp_1 tcc.dummy matches 4 positioned ~ ~2 ~ run function tcc:block/frostbloom/freeze/z
execute if score #temp_1 tcc.dummy matches 5 positioned ~ ~3 ~ run function tcc:block/frostbloom/freeze/z