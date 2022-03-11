############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ dispenser[triggered=true] run function tcc:item/wrench/rotate/block/dispenser/triggered
execute if block ~ ~ ~ dispenser[triggered=false] run function tcc:item/wrench/rotate/block/dispenser/not_triggered