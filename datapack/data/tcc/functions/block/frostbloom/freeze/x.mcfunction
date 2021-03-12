############################################################
# Description: Determines the x axis of the point to freeze
# Creator: ChromaKey
############################################################

execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~-2 ~ ~ run function tcc:block/frostbloom/freeze/y
execute if score tcc.temp_0 tcc.dummy matches 2 positioned ~-1 ~ ~ run function tcc:block/frostbloom/freeze/y
execute if score tcc.temp_0 tcc.dummy matches 3 positioned ~ ~ ~ run function tcc:block/frostbloom/freeze/y
execute if score tcc.temp_0 tcc.dummy matches 4 positioned ~1 ~ ~ run function tcc:block/frostbloom/freeze/y
execute if score tcc.temp_0 tcc.dummy matches 5 positioned ~2 ~ ~ run function tcc:block/frostbloom/freeze/y