############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ bamboo_stairs[half=bottom,waterlogged=false] run function tcc:item/wrench/rotate/block/bamboo_stairs/bottom
execute if block ~ ~ ~ bamboo_stairs[half=bottom,waterlogged=true] run function tcc:item/wrench/rotate/block/bamboo_stairs/bottom_waterlogged
execute if block ~ ~ ~ bamboo_stairs[half=top,waterlogged=false] run function tcc:item/wrench/rotate/block/bamboo_stairs/top
execute if block ~ ~ ~ bamboo_stairs[half=top,waterlogged=true] run function tcc:item/wrench/rotate/block/bamboo_stairs/top_waterlogged
