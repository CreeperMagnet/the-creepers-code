############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ bamboo_hanging_sign[waterlogged=true] run function tcc:item/wrench/rotate/block/bamboo_hanging_sign_unattached/waterlogged
execute if block ~ ~ ~ bamboo_hanging_sign[waterlogged=false] run function tcc:item/wrench/rotate/block/bamboo_hanging_sign_unattached/not_waterlogged