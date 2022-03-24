############################################################
# Special interactions with bamboo
############################################################

execute if block ~ ~-1 ~ #minecraft:bamboo_plantable_on unless block ~ ~-1 ~ minecraft:bamboo if block ~ ~1 ~ minecraft:bamboo run setblock ~ ~ ~ minecraft:bamboo_sapling
execute if block ~ ~1 ~ minecraft:bamboo run setblock ~ ~1 ~ air destroy
execute if block ~ ~ ~ minecraft:bamboo run setblock ~ ~ ~ air destroy