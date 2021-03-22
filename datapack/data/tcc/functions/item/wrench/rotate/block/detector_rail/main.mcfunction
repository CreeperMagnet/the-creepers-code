############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if block ~ ~ ~ detector_rail[waterlogged=true] run function tcc:item/wrench/rotate/block/detector_rail/waterlogged
execute if block ~ ~ ~ detector_rail[waterlogged=false] run function tcc:item/wrench/rotate/block/detector_rail/not_waterlogged
