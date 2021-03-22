############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if block ~ ~ ~ rail[waterlogged=true] run function tcc:item/wrench/rotate/block/rail/waterlogged
execute if block ~ ~ ~ rail[waterlogged=false] run function tcc:item/wrench/rotate/block/rail/not_waterlogged
