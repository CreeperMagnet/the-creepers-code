############################################################
# Commands to run off frostblooms tickly
############################################################

execute if block ~ ~2 ~ #tcc:air run setblock ~ ~2 ~ light[level=0]
execute positioned ~ ~1 ~ unless block ~ ~ ~ spruce_sapling[stage=0] run function tcc:block/frostbloom/block_change
