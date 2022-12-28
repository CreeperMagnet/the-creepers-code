############################################################
# Determines the chance of adding coral to drowned depending on the biome
############################################################

execute unless biome ~ ~ ~ #tcc:spawns_more_coral_drowned if predicate tcc:chance/one_thirtieth run function tcc:entity/processing/coral_drowned/set_variant
execute if biome ~ ~ ~ #tcc:spawns_more_coral_drowned if predicate tcc:chance/one_fourth run function tcc:entity/processing/coral_drowned/set_variant
