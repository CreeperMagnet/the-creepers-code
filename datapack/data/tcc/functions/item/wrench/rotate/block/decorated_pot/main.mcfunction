############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ decorated_pot[waterlogged=true] run function tcc:item/wrench/rotate/block/decorated_pot/waterlogged
execute if block ~ ~ ~ decorated_pot[waterlogged=false] run function tcc:item/wrench/rotate/block/decorated_pot/not_waterlogged
data modify block ~ ~ ~ shards set from storage tcc:storage root.temp.wrench_block_data.shards