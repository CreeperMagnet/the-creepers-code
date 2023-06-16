############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ crimson_hanging_sign[waterlogged=true] run function tcc:item/wrench/rotate/block/crimson_hanging_sign_attached/waterlogged_locked
execute if block ~ ~ ~ crimson_hanging_sign[waterlogged=false] run function tcc:item/wrench/rotate/block/crimson_hanging_sign_attached/not_waterlogged_locked