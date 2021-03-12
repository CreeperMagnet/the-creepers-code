############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if block ~ ~ ~ hopper[enabled=true] run function tcc:item/wrench/rotate/block/hopper/enabled
execute if block ~ ~ ~ hopper[enabled=false] run function tcc:item/wrench/rotate/block/hopper/not_enabled
data modify block ~ ~ ~ TransferCooldown set from storage tcc:storage root.temp.wrench_block_data.TransferCooldown