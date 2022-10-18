############################################################
# Tests for various block changes around the frostbloom
############################################################

execute if block ~ ~ ~ spruce_sapling run function tcc:block/frostbloom/grow
execute unless block ~ ~ ~ spruce_sapling run function tcc:block/frostbloom/break/main
