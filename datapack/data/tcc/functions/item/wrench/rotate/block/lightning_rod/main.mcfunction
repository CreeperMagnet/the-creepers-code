############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ lightning_rod[waterlogged=true] run function tcc:item/wrench/rotate/block/lightning_rod/waterlogged
execute if block ~ ~ ~ lightning_rod[waterlogged=false] run function tcc:item/wrench/rotate/block/lightning_rod/not_waterlogged
