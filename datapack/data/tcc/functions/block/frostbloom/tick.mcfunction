############################################################
# Commands to run off frostblooms tickly
############################################################

execute unless block ~ ~ ~ spruce_sapling[stage=0] run function tcc:block/frostbloom/block_change
execute if block ~ ~1 ~ #tcc:air run setblock ~ ~1 ~ light[level=0]