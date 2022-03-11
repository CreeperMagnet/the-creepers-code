############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ deepslate_brick_stairs[half=bottom,waterlogged=false] run function tcc:item/wrench/rotate/block/deepslate_brick_stairs/bottom
execute if block ~ ~ ~ deepslate_brick_stairs[half=bottom,waterlogged=true] run function tcc:item/wrench/rotate/block/deepslate_brick_stairs/bottom_waterlogged
execute if block ~ ~ ~ deepslate_brick_stairs[half=top,waterlogged=false] run function tcc:item/wrench/rotate/block/deepslate_brick_stairs/top
execute if block ~ ~ ~ deepslate_brick_stairs[half=top,waterlogged=true] run function tcc:item/wrench/rotate/block/deepslate_brick_stairs/top_waterlogged
