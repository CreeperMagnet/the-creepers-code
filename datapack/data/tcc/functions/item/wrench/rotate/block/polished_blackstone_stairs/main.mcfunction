############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ polished_blackstone_stairs[half=bottom,waterlogged=false] run function tcc:item/wrench/rotate/block/polished_blackstone_stairs/bottom
execute if block ~ ~ ~ polished_blackstone_stairs[half=bottom,waterlogged=true] run function tcc:item/wrench/rotate/block/polished_blackstone_stairs/bottom_waterlogged
execute if block ~ ~ ~ polished_blackstone_stairs[half=top,waterlogged=false] run function tcc:item/wrench/rotate/block/polished_blackstone_stairs/top
execute if block ~ ~ ~ polished_blackstone_stairs[half=top,waterlogged=true] run function tcc:item/wrench/rotate/block/polished_blackstone_stairs/top_waterlogged
