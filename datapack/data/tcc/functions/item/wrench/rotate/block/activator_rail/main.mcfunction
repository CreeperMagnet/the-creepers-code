############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ activator_rail[waterlogged=true] run function tcc:item/wrench/rotate/block/activator_rail/waterlogged
execute if block ~ ~ ~ activator_rail[waterlogged=false] run function tcc:item/wrench/rotate/block/activator_rail/not_waterlogged
