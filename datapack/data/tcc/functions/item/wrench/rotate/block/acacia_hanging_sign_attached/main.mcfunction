############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ acacia_hanging_sign[waterlogged=true] run function tcc:item/wrench/rotate/block/acacia_hanging_sign_attached/waterlogged
execute if block ~ ~ ~ acacia_hanging_sign[waterlogged=false] run function tcc:item/wrench/rotate/block/acacia_hanging_sign_attached/not_waterlogged