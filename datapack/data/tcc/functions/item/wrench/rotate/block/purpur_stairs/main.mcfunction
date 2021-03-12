############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if block ~ ~ ~ purpur_stairs[half=bottom,waterlogged=false] run function tcc:item/wrench/rotate/block/purpur_stairs/bottom
execute if block ~ ~ ~ purpur_stairs[half=bottom,waterlogged=true] run function tcc:item/wrench/rotate/block/purpur_stairs/bottom_waterlogged
execute if block ~ ~ ~ purpur_stairs[half=top,waterlogged=false] run function tcc:item/wrench/rotate/block/purpur_stairs/top
execute if block ~ ~ ~ purpur_stairs[half=top,waterlogged=true] run function tcc:item/wrench/rotate/block/purpur_stairs/top_waterlogged
