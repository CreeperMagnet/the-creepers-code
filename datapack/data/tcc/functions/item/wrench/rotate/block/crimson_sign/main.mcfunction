############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if block ~ ~ ~ crimson_sign[waterlogged=true] run function tcc:item/wrench/rotate/block/crimson_sign/waterlogged
execute if block ~ ~ ~ crimson_sign[waterlogged=false] run function tcc:item/wrench/rotate/block/crimson_sign/not_waterlogged