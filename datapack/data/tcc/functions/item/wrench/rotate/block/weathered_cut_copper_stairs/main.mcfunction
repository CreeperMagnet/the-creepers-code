############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if block ~ ~ ~ weathered_cut_copper_stairs[half=bottom,waterlogged=false] run function tcc:item/wrench/rotate/block/weathered_cut_copper_stairs/bottom
execute if block ~ ~ ~ weathered_cut_copper_stairs[half=bottom,waterlogged=true] run function tcc:item/wrench/rotate/block/weathered_cut_copper_stairs/bottom_waterlogged
execute if block ~ ~ ~ weathered_cut_copper_stairs[half=top,waterlogged=false] run function tcc:item/wrench/rotate/block/weathered_cut_copper_stairs/top
execute if block ~ ~ ~ weathered_cut_copper_stairs[half=top,waterlogged=true] run function tcc:item/wrench/rotate/block/weathered_cut_copper_stairs/top_waterlogged
