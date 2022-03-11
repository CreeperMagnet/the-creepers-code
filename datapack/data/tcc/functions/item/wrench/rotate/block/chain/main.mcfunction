############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ chain[waterlogged=true] run function tcc:item/wrench/rotate/block/chain/waterlogged
execute if block ~ ~ ~ chain[waterlogged=false] run function tcc:item/wrench/rotate/block/chain/not_waterlogged
