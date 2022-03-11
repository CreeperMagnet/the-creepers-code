############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ cobbled_deepslate_stairs[half=bottom,waterlogged=false] run function tcc:item/wrench/rotate/block/cobbled_deepslate_stairs/bottom
execute if block ~ ~ ~ cobbled_deepslate_stairs[half=bottom,waterlogged=true] run function tcc:item/wrench/rotate/block/cobbled_deepslate_stairs/bottom_waterlogged
execute if block ~ ~ ~ cobbled_deepslate_stairs[half=top,waterlogged=false] run function tcc:item/wrench/rotate/block/cobbled_deepslate_stairs/top
execute if block ~ ~ ~ cobbled_deepslate_stairs[half=top,waterlogged=true] run function tcc:item/wrench/rotate/block/cobbled_deepslate_stairs/top_waterlogged
