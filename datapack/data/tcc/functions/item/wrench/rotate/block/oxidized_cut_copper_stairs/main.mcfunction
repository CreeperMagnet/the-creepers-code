############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if block ~ ~ ~ oxidized_cut_copper_stairs[half=bottom,waterlogged=false] run function tcc:item/wrench/rotate/block/oxidized_cut_copper_stairs/bottom
execute if block ~ ~ ~ oxidized_cut_copper_stairs[half=bottom,waterlogged=true] run function tcc:item/wrench/rotate/block/oxidized_cut_copper_stairs/bottom_waterlogged
execute if block ~ ~ ~ oxidized_cut_copper_stairs[half=top,waterlogged=false] run function tcc:item/wrench/rotate/block/oxidized_cut_copper_stairs/top
execute if block ~ ~ ~ oxidized_cut_copper_stairs[half=top,waterlogged=true] run function tcc:item/wrench/rotate/block/oxidized_cut_copper_stairs/top_waterlogged