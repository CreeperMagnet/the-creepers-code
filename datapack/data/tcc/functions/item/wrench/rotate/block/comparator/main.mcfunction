############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if block ~ ~ ~ comparator[mode=compare] run function tcc:item/wrench/rotate/block/comparator/compare
execute if block ~ ~ ~ comparator[mode=subtract] run function tcc:item/wrench/rotate/block/comparator/subtract
