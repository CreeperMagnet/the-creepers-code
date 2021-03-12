############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if block ~ ~ ~ spruce_stairs[half=bottom,waterlogged=false] run function tcc:item/wrench/rotate/block/spruce_stairs/bottom
execute if block ~ ~ ~ spruce_stairs[half=bottom,waterlogged=true] run function tcc:item/wrench/rotate/block/spruce_stairs/bottom_waterlogged
execute if block ~ ~ ~ spruce_stairs[half=top,waterlogged=false] run function tcc:item/wrench/rotate/block/spruce_stairs/top
execute if block ~ ~ ~ spruce_stairs[half=top,waterlogged=true] run function tcc:item/wrench/rotate/block/spruce_stairs/top_waterlogged
