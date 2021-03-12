############################################################
# Description: Determines the y axis of the point to freeze
# Creator: ChromaKey
############################################################

execute if score tcc.temp_1 tcc.dummy matches 1 positioned ~ ~ ~ run function tcc:block/frostbloom/freeze/z
execute if score tcc.temp_1 tcc.dummy matches 2 positioned ~ ~1 ~ run function tcc:block/frostbloom/freeze/z
execute if score tcc.temp_1 tcc.dummy matches 3 positioned ~ ~2 ~ run function tcc:block/frostbloom/freeze/z
execute if score tcc.temp_1 tcc.dummy matches 4 positioned ~ ~3 ~ run function tcc:block/frostbloom/freeze/z
execute if score tcc.temp_1 tcc.dummy matches 5 positioned ~ ~4 ~ run function tcc:block/frostbloom/freeze/z