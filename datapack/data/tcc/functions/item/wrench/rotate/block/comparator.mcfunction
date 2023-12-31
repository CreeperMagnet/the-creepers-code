############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ comparator[mode=compare] run function tcc:item/wrench/rotate/macro/facing_cardinal_extra_blockstate {block:"minecraft:comparator",blockstate:"mode=compare"}
execute if block ~ ~ ~ comparator[mode=subtract] run function tcc:item/wrench/rotate/macro/facing_cardinal_extra_blockstate {block:"minecraft:comparator",blockstate:"mode=subtract"}
