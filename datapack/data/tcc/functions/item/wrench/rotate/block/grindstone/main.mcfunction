############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ grindstone[face=floor] run function tcc:item/wrench/rotate/block/grindstone/floor
execute if block ~ ~ ~ grindstone[face=wall] run function tcc:item/wrench/rotate/block/grindstone/wall
execute if block ~ ~ ~ grindstone[face=ceiling] run function tcc:item/wrench/rotate/block/grindstone/ceiling
