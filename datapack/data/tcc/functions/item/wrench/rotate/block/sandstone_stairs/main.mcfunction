############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ sandstone_stairs[half=bottom,waterlogged=false] run function tcc:item/wrench/rotate/block/sandstone_stairs/bottom
execute if block ~ ~ ~ sandstone_stairs[half=bottom,waterlogged=true] run function tcc:item/wrench/rotate/block/sandstone_stairs/bottom_waterlogged
execute if block ~ ~ ~ sandstone_stairs[half=top,waterlogged=false] run function tcc:item/wrench/rotate/block/sandstone_stairs/top
execute if block ~ ~ ~ sandstone_stairs[half=top,waterlogged=true] run function tcc:item/wrench/rotate/block/sandstone_stairs/top_waterlogged
