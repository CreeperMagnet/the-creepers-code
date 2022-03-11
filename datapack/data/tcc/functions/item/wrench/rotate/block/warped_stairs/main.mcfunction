############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ warped_stairs[half=bottom,waterlogged=false] run function tcc:item/wrench/rotate/block/warped_stairs/bottom
execute if block ~ ~ ~ warped_stairs[half=bottom,waterlogged=true] run function tcc:item/wrench/rotate/block/warped_stairs/bottom_waterlogged
execute if block ~ ~ ~ warped_stairs[half=top,waterlogged=false] run function tcc:item/wrench/rotate/block/warped_stairs/top
execute if block ~ ~ ~ warped_stairs[half=top,waterlogged=true] run function tcc:item/wrench/rotate/block/warped_stairs/top_waterlogged
