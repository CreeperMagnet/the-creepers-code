############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ polished_granite_stairs[half=bottom,waterlogged=false] run function tcc:item/wrench/rotate/block/polished_granite_stairs/bottom
execute if block ~ ~ ~ polished_granite_stairs[half=bottom,waterlogged=true] run function tcc:item/wrench/rotate/block/polished_granite_stairs/bottom_waterlogged
execute if block ~ ~ ~ polished_granite_stairs[half=top,waterlogged=false] run function tcc:item/wrench/rotate/block/polished_granite_stairs/top
execute if block ~ ~ ~ polished_granite_stairs[half=top,waterlogged=true] run function tcc:item/wrench/rotate/block/polished_granite_stairs/top_waterlogged
