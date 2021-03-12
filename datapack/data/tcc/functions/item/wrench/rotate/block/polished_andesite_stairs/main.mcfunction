############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if block ~ ~ ~ polished_andesite_stairs[half=bottom,waterlogged=false] run function tcc:item/wrench/rotate/block/polished_andesite_stairs/bottom
execute if block ~ ~ ~ polished_andesite_stairs[half=bottom,waterlogged=true] run function tcc:item/wrench/rotate/block/polished_andesite_stairs/bottom_waterlogged
execute if block ~ ~ ~ polished_andesite_stairs[half=top,waterlogged=false] run function tcc:item/wrench/rotate/block/polished_andesite_stairs/top
execute if block ~ ~ ~ polished_andesite_stairs[half=top,waterlogged=true] run function tcc:item/wrench/rotate/block/polished_andesite_stairs/top_waterlogged
