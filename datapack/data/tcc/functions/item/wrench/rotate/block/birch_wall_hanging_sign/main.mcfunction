############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ birch_wall_hanging_sign[waterlogged=true] run function tcc:item/wrench/rotate/block/birch_wall_hanging_sign/waterlogged
execute if block ~ ~ ~ birch_wall_hanging_sign[waterlogged=false] run function tcc:item/wrench/rotate/block/birch_wall_hanging_sign/not_waterlogged