############################################################
# Description: Checks a block tag
# Creator: CreeperMagnet_
############################################################

execute if block ~ ~ ~ minecraft:furnace run function tcc:item/wrench/rotate/block/furnace/main

execute if block ~ ~ ~ minecraft:smoker run function tcc:item/wrench/rotate/block/smoker/main

execute if block ~ ~ ~ minecraft:blast_furnace run function tcc:item/wrench/rotate/block/blast_furnace/main

data modify block ~ ~ ~ BurnTime set from storage tcc:storage root.temp.wrench_block_data.BurnTime
data modify block ~ ~ ~ CookTime set from storage tcc:storage root.temp.wrench_block_data.CookTime
data modify block ~ ~ ~ CookTimeTotal set from storage tcc:storage root.temp.wrench_block_data.CookTimeTotal
data modify block ~ ~ ~ RecipeUsedSize set from storage tcc:storage root.temp.wrench_block_data.RecipeUsedSize
