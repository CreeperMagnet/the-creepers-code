############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if block ~ ~ ~ chest[waterlogged=true] run function tcc:item/wrench/rotate/block/chest/waterlogged
execute if block ~ ~ ~ chest[waterlogged=false] run function tcc:item/wrench/rotate/block/chest/not_waterlogged