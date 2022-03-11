############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ mossy_cobblestone_stairs[half=bottom,waterlogged=false] run function tcc:item/wrench/rotate/block/mossy_cobblestone_stairs/bottom
execute if block ~ ~ ~ mossy_cobblestone_stairs[half=bottom,waterlogged=true] run function tcc:item/wrench/rotate/block/mossy_cobblestone_stairs/bottom_waterlogged
execute if block ~ ~ ~ mossy_cobblestone_stairs[half=top,waterlogged=false] run function tcc:item/wrench/rotate/block/mossy_cobblestone_stairs/top
execute if block ~ ~ ~ mossy_cobblestone_stairs[half=top,waterlogged=true] run function tcc:item/wrench/rotate/block/mossy_cobblestone_stairs/top_waterlogged
