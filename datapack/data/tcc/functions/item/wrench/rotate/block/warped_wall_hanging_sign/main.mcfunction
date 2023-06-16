############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ warped_wall_hanging_sign[waterlogged=true] run function tcc:item/wrench/rotate/block/warped_wall_hanging_sign/waterlogged
execute if block ~ ~ ~ warped_wall_hanging_sign[waterlogged=false] run function tcc:item/wrench/rotate/block/warped_wall_hanging_sign/not_waterlogged