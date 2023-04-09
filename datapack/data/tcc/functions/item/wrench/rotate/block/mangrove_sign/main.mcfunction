############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ mangrove_sign[waterlogged=true] run function tcc:item/wrench/rotate/block/mangrove_sign/waterlogged
execute if block ~ ~ ~ mangrove_sign[waterlogged=false] run function tcc:item/wrench/rotate/block/mangrove_sign/not_waterlogged