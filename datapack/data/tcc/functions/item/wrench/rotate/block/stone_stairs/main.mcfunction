############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ stone_stairs[half=bottom,waterlogged=false] run function tcc:item/wrench/rotate/block/stone_stairs/bottom
execute if block ~ ~ ~ stone_stairs[half=bottom,waterlogged=true] run function tcc:item/wrench/rotate/block/stone_stairs/bottom_waterlogged
execute if block ~ ~ ~ stone_stairs[half=top,waterlogged=false] run function tcc:item/wrench/rotate/block/stone_stairs/top
execute if block ~ ~ ~ stone_stairs[half=top,waterlogged=true] run function tcc:item/wrench/rotate/block/stone_stairs/top_waterlogged
