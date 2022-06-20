############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ mangrove_stairs[half=bottom,waterlogged=false] run function tcc:item/wrench/rotate/block/mangrove_stairs/bottom
execute if block ~ ~ ~ mangrove_stairs[half=bottom,waterlogged=true] run function tcc:item/wrench/rotate/block/mangrove_stairs/bottom_waterlogged
execute if block ~ ~ ~ mangrove_stairs[half=top,waterlogged=false] run function tcc:item/wrench/rotate/block/mangrove_stairs/top
execute if block ~ ~ ~ mangrove_stairs[half=top,waterlogged=true] run function tcc:item/wrench/rotate/block/mangrove_stairs/top_waterlogged
