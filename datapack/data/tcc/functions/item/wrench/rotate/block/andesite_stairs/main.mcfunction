############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if block ~ ~ ~ andesite_stairs[half=bottom,waterlogged=false] run function tcc:item/wrench/rotate/block/andesite_stairs/bottom
execute if block ~ ~ ~ andesite_stairs[half=bottom,waterlogged=true] run function tcc:item/wrench/rotate/block/andesite_stairs/bottom_waterlogged
execute if block ~ ~ ~ andesite_stairs[half=top,waterlogged=false] run function tcc:item/wrench/rotate/block/andesite_stairs/top
execute if block ~ ~ ~ andesite_stairs[half=top,waterlogged=true] run function tcc:item/wrench/rotate/block/andesite_stairs/top_waterlogged
