# Commands to run off frostblooms tickly

execute if block ~ ~2 ~ #tcc:air run setblock ~ ~2 ~ minecraft:light[level=0]
execute positioned ~ ~1 ~ unless block ~ ~ ~ minecraft:spruce_sapling[stage=0] run function tcc:block/frostbloom/block_change
