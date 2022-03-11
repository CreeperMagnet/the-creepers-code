############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ birch_sign[waterlogged=true] run function tcc:item/wrench/rotate/block/birch_sign/waterlogged
execute if block ~ ~ ~ birch_sign[waterlogged=false] run function tcc:item/wrench/rotate/block/birch_sign/not_waterlogged