############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ cherry_sign[waterlogged=true] run function tcc:item/wrench/rotate/block/cherry_sign/waterlogged
execute if block ~ ~ ~ cherry_sign[waterlogged=false] run function tcc:item/wrench/rotate/block/cherry_sign/not_waterlogged