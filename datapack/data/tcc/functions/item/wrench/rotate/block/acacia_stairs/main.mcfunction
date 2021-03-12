############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if block ~ ~ ~ acacia_stairs[half=bottom,waterlogged=false] run function tcc:item/wrench/rotate/block/acacia_stairs/bottom
execute if block ~ ~ ~ acacia_stairs[half=bottom,waterlogged=true] run function tcc:item/wrench/rotate/block/acacia_stairs/bottom_waterlogged
execute if block ~ ~ ~ acacia_stairs[half=top,waterlogged=false] run function tcc:item/wrench/rotate/block/acacia_stairs/top
execute if block ~ ~ ~ acacia_stairs[half=top,waterlogged=true] run function tcc:item/wrench/rotate/block/acacia_stairs/top_waterlogged
