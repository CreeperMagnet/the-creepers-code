############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ smooth_sandstone_stairs[half=bottom,waterlogged=false] run function tcc:item/wrench/rotate/block/smooth_sandstone_stairs/bottom
execute if block ~ ~ ~ smooth_sandstone_stairs[half=bottom,waterlogged=true] run function tcc:item/wrench/rotate/block/smooth_sandstone_stairs/bottom_waterlogged
execute if block ~ ~ ~ smooth_sandstone_stairs[half=top,waterlogged=false] run function tcc:item/wrench/rotate/block/smooth_sandstone_stairs/top
execute if block ~ ~ ~ smooth_sandstone_stairs[half=top,waterlogged=true] run function tcc:item/wrench/rotate/block/smooth_sandstone_stairs/top_waterlogged
