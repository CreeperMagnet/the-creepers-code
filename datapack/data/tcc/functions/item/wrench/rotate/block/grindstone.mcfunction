############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ grindstone[face=floor] run function tcc:item/wrench/rotate/macro/facing_cardinal_extra_blockstate {block:"grindstone",blockstate:"face=floor"}
execute if block ~ ~ ~ grindstone[face=wall] run function tcc:item/wrench/rotate/macro/facing_cardinal_extra_blockstate {block:"grindstone",blockstate:"face=wall"}
execute if block ~ ~ ~ grindstone[face=ceiling] run function tcc:item/wrench/rotate/macro/facing_cardinal_extra_blockstate {block:"grindstone",blockstate:"face=ceiling"}
