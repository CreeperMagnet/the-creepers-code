############################################################
# Rotates a block with an axis blockstate
############################################################

execute if block ~ ~ ~ #minecraft:logs run function tcc:item/wrench/rotate/block_tag/logs/main

execute if block ~ ~ ~ #minecraft:bamboo_blocks run function tcc:item/wrench/rotate/block_tag/bamboo_blocks

execute if block ~ ~ ~ #tcc:froglights run function tcc:item/wrench/rotate/block_tag/froglights

execute if block ~ ~ ~ minecraft:basalt run function tcc:item/wrench/rotate/macro/axis {block:"minecraft:basalt"}

execute if block ~ ~ ~ minecraft:polished_basalt run function tcc:item/wrench/rotate/macro/axis {block:"minecraft:polished_basalt"}

execute if block ~ ~ ~ minecraft:quartz_pillar run function tcc:item/wrench/rotate/macro/axis {block:"minecraft:quartz_pillar"}

execute if block ~ ~ ~ minecraft:purpur_pillar run function tcc:item/wrench/rotate/macro/axis {block:"minecraft:purpur_pillar"}

execute if block ~ ~ ~ minecraft:deepslate run function tcc:item/wrench/rotate/macro/axis {block:"minecraft:deepslate"}

execute if block ~ ~ ~ minecraft:infested_deepslate run function tcc:item/wrench/rotate/macro/axis {block:"minecraft:infested_deepslate"}

execute if block ~ ~ ~ minecraft:hay_block run function tcc:item/wrench/rotate/macro/axis {block:"minecraft:hay_block"}

execute if block ~ ~ ~ minecraft:bone_block run function tcc:item/wrench/rotate/macro/axis {block:"minecraft:bone_block"}

execute if block ~ ~ ~ minecraft:muddy_mangrove_roots run function tcc:item/wrench/rotate/macro/axis {block:"minecraft:muddy_mangrove_roots"}
