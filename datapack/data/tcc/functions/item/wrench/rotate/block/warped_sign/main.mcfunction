############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ warped_sign[waterlogged=true] run function tcc:item/wrench/rotate/block/warped_sign/waterlogged
execute if block ~ ~ ~ warped_sign[waterlogged=false] run function tcc:item/wrench/rotate/block/warped_sign/not_waterlogged