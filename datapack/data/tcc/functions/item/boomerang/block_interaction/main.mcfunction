############################################################
# Special interactions with blocks
############################################################

execute if block ~ ~ ~ minecraft:wheat[age=7] run setblock ~ ~ ~ minecraft:wheat destroy
execute if block ~ ~ ~ minecraft:potatoes[age=7] run setblock ~ ~ ~ minecraft:potatoes destroy
execute if block ~ ~ ~ minecraft:carrots[age=7] run setblock ~ ~ ~ minecraft:carrots destroy
execute if block ~ ~ ~ minecraft:beetroots[age=3] run setblock ~ ~ ~ minecraft:beetroots destroy

execute unless block ~ ~-0.3 ~ minecraft:snow if block ~ ~ ~ minecraft:snow[layers=1] run setblock ~ ~ ~ minecraft:air destroy
execute unless block ~ ~-0.6 ~ minecraft:snow if block ~ ~ ~ minecraft:snow[layers=2] run setblock ~ ~ ~ minecraft:air destroy

execute if block ~ ~ ~ #minecraft:sand if block ~ ~-1 ~ #tcc:air run function tcc:item/boomerang/block_interaction/sand

execute if block ~ ~ ~ #tcc:boomerang/break run setblock ~ ~ ~ minecraft:air destroy
