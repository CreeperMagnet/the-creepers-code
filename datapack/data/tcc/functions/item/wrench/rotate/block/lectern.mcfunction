############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ lectern[has_book=true] run function tcc:item/wrench/rotate/macro/facing_cardinal_extra_blockstate {block:"minecraft:lectern",blockstate:"has_book=true"}
execute if block ~ ~ ~ lectern[has_book=false] run function tcc:item/wrench/rotate/macro/facing_cardinal {block:"minecraft:lectern"}
