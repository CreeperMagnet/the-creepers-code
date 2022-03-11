############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ furnace[lit=true] run function tcc:item/wrench/rotate/block/furnace/lit
execute if block ~ ~ ~ furnace[lit=false] run function tcc:item/wrench/rotate/block/furnace/unlit