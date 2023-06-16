############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ cherry_hanging_sign[waterlogged=true] run function tcc:item/wrench/rotate/block/cherry_hanging_sign_unattached/waterlogged
execute if block ~ ~ ~ cherry_hanging_sign[waterlogged=false] run function tcc:item/wrench/rotate/block/cherry_hanging_sign_unattached/not_waterlogged