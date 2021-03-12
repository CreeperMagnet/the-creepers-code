############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if block ~ ~ ~ jungle_sign[waterlogged=true] run function tcc:item/wrench/rotate/block/jungle_sign/waterlogged
execute if block ~ ~ ~ jungle_sign[waterlogged=false] run function tcc:item/wrench/rotate/block/jungle_sign/not_waterlogged