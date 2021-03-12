############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if block ~ ~ ~ furnace[lit=true] run function tcc:item/wrench/rotate/block/furnace/lit
execute if block ~ ~ ~ furnace[lit=false] run function tcc:item/wrench/rotate/block/furnace/unlit