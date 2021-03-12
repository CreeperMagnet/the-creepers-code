############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if block ~ ~ ~ crimson_stairs[half=bottom,waterlogged=false] run function tcc:item/wrench/rotate/block/crimson_stairs/bottom
execute if block ~ ~ ~ crimson_stairs[half=bottom,waterlogged=true] run function tcc:item/wrench/rotate/block/crimson_stairs/bottom_waterlogged
execute if block ~ ~ ~ crimson_stairs[half=top,waterlogged=false] run function tcc:item/wrench/rotate/block/crimson_stairs/top
execute if block ~ ~ ~ crimson_stairs[half=top,waterlogged=true] run function tcc:item/wrench/rotate/block/crimson_stairs/top_waterlogged
