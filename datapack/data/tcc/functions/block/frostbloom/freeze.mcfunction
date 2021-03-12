############################################################
# Description: Freezes a random block in a 5x5 area with an iceier version
# Creator: ChromaKey
############################################################

execute store result score tcc.temp_0 tcc.dummy run loot spawn 0 0 0 loot tcc:technical/roll/min_1_max_5
execute store result score tcc.temp_1 tcc.dummy run loot spawn 0 0 0 loot tcc:technical/roll/min_1_max_5
execute store result score tcc.temp_2 tcc.dummy run loot spawn 0 0 0 loot tcc:technical/roll/min_1_max_5

function tcc:block/frostbloom/freeze/x
