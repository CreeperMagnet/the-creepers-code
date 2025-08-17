# Determines the chance of adding coral to drowned depending on the biome

execute unless biome ~ ~ ~ #tcc:spawns_more_coral_drowned if predicate tcc:random_chance/0.05 run function tcc:entity/drowned/coral/set_variant
execute if biome ~ ~ ~ #tcc:spawns_more_coral_drowned run function tcc:entity/drowned/coral/set_variant
