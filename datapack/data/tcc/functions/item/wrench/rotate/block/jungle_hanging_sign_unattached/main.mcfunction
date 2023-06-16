############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ jungle_hanging_sign[waterlogged=true] run function tcc:item/wrench/rotate/block/jungle_hanging_sign_unattached/waterlogged
execute if block ~ ~ ~ jungle_hanging_sign[waterlogged=false] run function tcc:item/wrench/rotate/block/jungle_hanging_sign_unattached/not_waterlogged