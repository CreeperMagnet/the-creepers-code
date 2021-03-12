############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if block ~ ~ ~ trapped_chest[waterlogged=true] run function tcc:item/wrench/rotate/block/trapped_chest/waterlogged
execute if block ~ ~ ~ trapped_chest[waterlogged=false] run function tcc:item/wrench/rotate/block/trapped_chest/not_waterlogged