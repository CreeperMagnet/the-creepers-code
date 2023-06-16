############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ birch_hanging_sign[waterlogged=true] run function tcc:item/wrench/rotate/block/birch_hanging_sign_attached/waterlogged
execute if block ~ ~ ~ birch_hanging_sign[waterlogged=false] run function tcc:item/wrench/rotate/block/birch_hanging_sign_attached/not_waterlogged