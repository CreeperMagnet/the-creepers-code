############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ quartz_stairs[half=bottom,waterlogged=false] run function tcc:item/wrench/rotate/block/quartz_stairs/bottom
execute if block ~ ~ ~ quartz_stairs[half=bottom,waterlogged=true] run function tcc:item/wrench/rotate/block/quartz_stairs/bottom_waterlogged
execute if block ~ ~ ~ quartz_stairs[half=top,waterlogged=false] run function tcc:item/wrench/rotate/block/quartz_stairs/top
execute if block ~ ~ ~ quartz_stairs[half=top,waterlogged=true] run function tcc:item/wrench/rotate/block/quartz_stairs/top_waterlogged
