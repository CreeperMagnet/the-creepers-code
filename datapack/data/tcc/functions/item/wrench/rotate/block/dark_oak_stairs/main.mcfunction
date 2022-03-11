############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ dark_oak_stairs[half=bottom,waterlogged=false] run function tcc:item/wrench/rotate/block/dark_oak_stairs/bottom
execute if block ~ ~ ~ dark_oak_stairs[half=bottom,waterlogged=true] run function tcc:item/wrench/rotate/block/dark_oak_stairs/bottom_waterlogged
execute if block ~ ~ ~ dark_oak_stairs[half=top,waterlogged=false] run function tcc:item/wrench/rotate/block/dark_oak_stairs/top
execute if block ~ ~ ~ dark_oak_stairs[half=top,waterlogged=true] run function tcc:item/wrench/rotate/block/dark_oak_stairs/top_waterlogged
