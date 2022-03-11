############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ acacia_sign[waterlogged=true] run function tcc:item/wrench/rotate/block/acacia_sign/waterlogged
execute if block ~ ~ ~ acacia_sign[waterlogged=false] run function tcc:item/wrench/rotate/block/acacia_sign/not_waterlogged