############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ cherry_stairs[half=bottom,waterlogged=false] run function tcc:item/wrench/rotate/block/cherry_stairs/bottom
execute if block ~ ~ ~ cherry_stairs[half=bottom,waterlogged=true] run function tcc:item/wrench/rotate/block/cherry_stairs/bottom_waterlogged
execute if block ~ ~ ~ cherry_stairs[half=top,waterlogged=false] run function tcc:item/wrench/rotate/block/cherry_stairs/top
execute if block ~ ~ ~ cherry_stairs[half=top,waterlogged=true] run function tcc:item/wrench/rotate/block/cherry_stairs/top_waterlogged
