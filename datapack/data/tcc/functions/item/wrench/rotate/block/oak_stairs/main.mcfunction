############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if block ~ ~ ~ oak_stairs[half=bottom,waterlogged=false] run function tcc:item/wrench/rotate/block/oak_stairs/bottom
execute if block ~ ~ ~ oak_stairs[half=bottom,waterlogged=true] run function tcc:item/wrench/rotate/block/oak_stairs/bottom_waterlogged
execute if block ~ ~ ~ oak_stairs[half=top,waterlogged=false] run function tcc:item/wrench/rotate/block/oak_stairs/top
execute if block ~ ~ ~ oak_stairs[half=top,waterlogged=true] run function tcc:item/wrench/rotate/block/oak_stairs/top_waterlogged
