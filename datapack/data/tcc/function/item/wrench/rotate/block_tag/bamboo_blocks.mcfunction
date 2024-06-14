# Checks a block tag

execute if block ~ ~ ~ minecraft:bamboo_block run function tcc:item/wrench/rotate/macro/axis {block:"minecraft:bamboo_block"}
execute if block ~ ~ ~ minecraft:stripped_bamboo_block run function tcc:item/wrench/rotate/macro/axis {block:"minecraft:stripped_bamboo_block"}
