# Rotates a block

execute if block ~ ~ ~ minecraft:comparator[mode=compare] run function tcc:item/wrench/rotate/macro/facing_cardinal_extra_blockstate {block:"minecraft:comparator",blockstate:"mode=compare"}
execute if block ~ ~ ~ minecraft:comparator[mode=subtract] run function tcc:item/wrench/rotate/macro/facing_cardinal_extra_blockstate {block:"minecraft:comparator",blockstate:"mode=subtract"}
