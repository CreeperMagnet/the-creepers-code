############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ dropper[triggered=true] run function tcc:item/wrench/rotate/block/dropper/triggered
execute if block ~ ~ ~ dropper[triggered=false] run function tcc:item/wrench/rotate/block/dropper/not_triggered