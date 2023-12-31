############################################################
# Checks a block tag
############################################################

execute if block ~ ~ ~ minecraft:furnace run function tcc:item/wrench/rotate/macro/furnace {block:"minecraft:furnace"}

execute if block ~ ~ ~ minecraft:smoker run function tcc:item/wrench/rotate/macro/furnace {block:"minecraft:smoker"}

execute if block ~ ~ ~ minecraft:blast_furnace run function tcc:item/wrench/rotate/macro/furnace {block:"minecraft:blast_furnace"}
