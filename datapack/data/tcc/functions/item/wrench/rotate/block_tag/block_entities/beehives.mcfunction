############################################################
# Description: Checks a block tag
# Creator: CreeperMagnet_
############################################################

execute if block ~ ~ ~ minecraft:beehive run function tcc:item/wrench/rotate/block/beehive/main

execute if block ~ ~ ~ minecraft:bee_nest run function tcc:item/wrench/rotate/block/bee_nest/main

data modify block ~ ~ ~ Bees set from storage tcc:storage root.temp.wrench_block_data.Bees
data modify block ~ ~ ~ FlowerPos set from storage tcc:storage root.temp.wrench_block_data.FlowerPos