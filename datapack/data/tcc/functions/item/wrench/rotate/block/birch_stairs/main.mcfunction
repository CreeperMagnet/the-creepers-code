############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ birch_stairs[half=bottom,waterlogged=false] run function tcc:item/wrench/rotate/block/birch_stairs/bottom
execute if block ~ ~ ~ birch_stairs[half=bottom,waterlogged=true] run function tcc:item/wrench/rotate/block/birch_stairs/bottom_waterlogged
execute if block ~ ~ ~ birch_stairs[half=top,waterlogged=false] run function tcc:item/wrench/rotate/block/birch_stairs/top
execute if block ~ ~ ~ birch_stairs[half=top,waterlogged=true] run function tcc:item/wrench/rotate/block/birch_stairs/top_waterlogged
