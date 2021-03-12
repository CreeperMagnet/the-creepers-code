############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if block ~ ~ ~ barrel[open=true] run function tcc:item/wrench/rotate/block/barrel/open
execute if block ~ ~ ~ barrel[open=false] run function tcc:item/wrench/rotate/block/barrel/closed