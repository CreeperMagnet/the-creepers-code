# Tests for various block changes around the frostbloom

execute if block ~ ~ ~ minecraft:spruce_sapling run function tcc:block/frostbloom/grow
execute unless block ~ ~ ~ minecraft:spruce_sapling run function tcc:block/frostbloom/break/main
