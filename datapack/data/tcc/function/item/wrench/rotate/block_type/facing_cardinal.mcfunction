# Rotates a block with a cardinal facing blockstate

execute if block ~ ~ ~ #minecraft:anvil run function tcc:item/wrench/rotate/block_tag/anvil

execute if block ~ ~ ~ #tcc:glazed_terracotta run function tcc:item/wrench/rotate/block_tag/glazed_terracotta

execute if block ~ ~ ~ minecraft:carved_pumpkin run function tcc:item/wrench/rotate/macro/facing_cardinal {block:"minecraft:carved_pumpkin"}

execute if block ~ ~ ~ minecraft:jack_o_lantern run function tcc:item/wrench/rotate/macro/facing_cardinal {block:"minecraft:jack_o_lantern"}

execute if block ~ ~ ~ minecraft:stonecutter run function tcc:item/wrench/rotate/macro/facing_cardinal {block:"minecraft:stonecutter"}

execute if block ~ ~ ~ minecraft:loom run function tcc:item/wrench/rotate/macro/facing_cardinal {block:"minecraft:loom"}

execute if block ~ ~ ~ minecraft:chiseled_bookshelf run function tcc:item/wrench/rotate/block/chiseled_bookshelf/main

execute if block ~ ~ ~ #tcc:furnaces run function tcc:item/wrench/rotate/block_tag/furnaces

execute if block ~ ~ ~ minecraft:grindstone run function tcc:item/wrench/rotate/block/grindstone

execute if block ~ ~ ~ minecraft:comparator run function tcc:item/wrench/rotate/block/comparator

execute if block ~ ~ ~ minecraft:lectern run function tcc:item/wrench/rotate/block/lectern

execute if block ~ ~ ~ #minecraft:beehives run function tcc:item/wrench/rotate/block_tag/beehives