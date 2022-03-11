############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ iron_trapdoor[half=bottom,waterlogged=false] run function tcc:item/wrench/rotate/block/iron_trapdoor/bottom
execute if block ~ ~ ~ iron_trapdoor[half=bottom,waterlogged=true] run function tcc:item/wrench/rotate/block/iron_trapdoor/bottom_waterlogged
execute if block ~ ~ ~ iron_trapdoor[half=top,waterlogged=false] run function tcc:item/wrench/rotate/block/iron_trapdoor/top
execute if block ~ ~ ~ iron_trapdoor[half=top,waterlogged=true] run function tcc:item/wrench/rotate/block/iron_trapdoor/top_waterlogged