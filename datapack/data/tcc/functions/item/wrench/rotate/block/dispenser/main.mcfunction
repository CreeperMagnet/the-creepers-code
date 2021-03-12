############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if block ~ ~ ~ dispenser[triggered=true] run function tcc:item/wrench/rotate/block/dispenser/triggered
execute if block ~ ~ ~ dispenser[triggered=false] run function tcc:item/wrench/rotate/block/dispenser/not_triggered