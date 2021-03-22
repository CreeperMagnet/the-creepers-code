############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if block ~ ~ ~ powered_rail[waterlogged=true] run function tcc:item/wrench/rotate/block/powered_rail/waterlogged
execute if block ~ ~ ~ powered_rail[waterlogged=false] run function tcc:item/wrench/rotate/block/powered_rail/not_waterlogged
