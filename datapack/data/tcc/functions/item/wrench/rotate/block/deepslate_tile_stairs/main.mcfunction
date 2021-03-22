############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if block ~ ~ ~ deepslate_tile_stairs[half=bottom,waterlogged=false] run function tcc:item/wrench/rotate/block/deepslate_tile_stairs/bottom
execute if block ~ ~ ~ deepslate_tile_stairs[half=bottom,waterlogged=true] run function tcc:item/wrench/rotate/block/deepslate_tile_stairs/bottom_waterlogged
execute if block ~ ~ ~ deepslate_tile_stairs[half=top,waterlogged=false] run function tcc:item/wrench/rotate/block/deepslate_tile_stairs/top
execute if block ~ ~ ~ deepslate_tile_stairs[half=top,waterlogged=true] run function tcc:item/wrench/rotate/block/deepslate_tile_stairs/top_waterlogged
