# Rotates a block with a cardinal facing blockstate

execute if block ~ ~ ~ #minecraft:anvil run function tcc:item/wrench/rotate/block_tag/anvil

execute if block ~ ~ ~ #tcc:glazed_terracotta run function tcc:item/wrench/rotate/block_tag/glazed_terracotta

execute if block ~ ~ ~ minecraft:carved_pumpkin run function tcc:item/wrench/rotate/macro/facing_cardinal {block:"minecraft:carved_pumpkin"}

execute if block ~ ~ ~ minecraft:jack_o_lantern run function tcc:item/wrench/rotate/macro/facing_cardinal {block:"minecraft:jack_o_lantern"}

execute if block ~ ~ ~ minecraft:stonecutter run function tcc:item/wrench/rotate/macro/facing_cardinal {block:"minecraft:stonecutter"}

execute if block ~ ~ ~ minecraft:loom run function tcc:item/wrench/rotate/macro/facing_cardinal {block:"minecraft:loom"}

execute if block ~ ~ ~ minecraft:bell[attachment=floor] run function tcc:item/wrench/rotate/macro/facing_cardinal {block:"minecraft:bell"}

execute if block ~ ~ ~ #minecraft:fence_gates[open=false,powered=false] run function tcc:item/wrench/rotate/block_tag/fence_gates
