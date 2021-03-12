############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if block ~ ~ ~ ender_chest[waterlogged=true] run function tcc:item/wrench/rotate/block/ender_chest/waterlogged
execute if block ~ ~ ~ ender_chest[waterlogged=false] run function tcc:item/wrench/rotate/block/ender_chest/not_waterlogged