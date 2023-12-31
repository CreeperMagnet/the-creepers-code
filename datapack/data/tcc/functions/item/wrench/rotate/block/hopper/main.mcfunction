############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ hopper[enabled=true] run function tcc:item/wrench/rotate/block/hopper/enabled
execute if block ~ ~ ~ hopper[enabled=false] run function tcc:item/wrench/rotate/block/hopper/not_enabled