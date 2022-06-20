############################################################
# Rotates the block you're looking at
############################################################
scoreboard players set @s tcc.dummy 0

execute if block ~ ~ ~ #tcc:block_entities run function tcc:item/wrench/rotate/block_tag/block_entities/main

execute if block ~ ~ ~ #minecraft:logs run function tcc:item/wrench/rotate/block_tag/logs/main

execute if block ~ ~ ~ minecraft:basalt run function tcc:item/wrench/rotate/block/basalt

execute if block ~ ~ ~ minecraft:polished_basalt run function tcc:item/wrench/rotate/block/polished_basalt

execute if block ~ ~ ~ #tcc:glazed_terracotta run function tcc:item/wrench/rotate/block_tag/glazed_terracotta

execute if block ~ ~ ~ minecraft:carved_pumpkin run function tcc:item/wrench/rotate/block/carved_pumpkin

execute if block ~ ~ ~ minecraft:jack_o_lantern run function tcc:item/wrench/rotate/block/jack_o_lantern

execute if block ~ ~ ~ minecraft:quartz_pillar run function tcc:item/wrench/rotate/block/quartz_pillar

execute if block ~ ~ ~ minecraft:purpur_pillar run function tcc:item/wrench/rotate/block/purpur_pillar

execute if block ~ ~ ~ minecraft:muddy_mangrove_roots run function tcc:item/wrench/rotate/block/muddy_mangrove_roots

execute if block ~ ~ ~ minecraft:deepslate run function tcc:item/wrench/rotate/block/deepslate

execute if block ~ ~ ~ minecraft:infested_deepslate run function tcc:item/wrench/rotate/block/infested_deepslate

execute if block ~ ~ ~ minecraft:hay_block run function tcc:item/wrench/rotate/block/hay_block

execute if block ~ ~ ~ minecraft:bone_block run function tcc:item/wrench/rotate/block/bone_block

execute if block ~ ~ ~ minecraft:end_rod run function tcc:item/wrench/rotate/block/end_rod

execute if block ~ ~ ~ minecraft:chain run function tcc:item/wrench/rotate/block/chain/main

execute if block ~ ~ ~ minecraft:lightning_rod run function tcc:item/wrench/rotate/block/lightning_rod/main

execute if block ~ ~ ~ minecraft:observer run function tcc:item/wrench/rotate/block/observer

execute if block ~ ~ ~ minecraft:piston[extended=false] run function tcc:item/wrench/rotate/block/piston

execute if block ~ ~ ~ minecraft:sticky_piston[extended=false] run function tcc:item/wrench/rotate/block/sticky_piston

execute if block ~ ~ ~ #tcc:non_wall_banners run function tcc:item/wrench/rotate/block_tag/non_wall_banners

execute if block ~ ~ ~ #minecraft:rails run function tcc:item/wrench/rotate/block_tag/rails

execute if block ~ ~ ~ #minecraft:anvil run function tcc:item/wrench/rotate/block_tag/anvil

execute if block ~ ~ ~ #minecraft:fence_gates[open=false,powered=false] run function tcc:item/wrench/rotate/block_tag/fence_gates

execute if block ~ ~ ~ minecraft:bell[attachment=floor] run function tcc:item/wrench/rotate/block/bell

execute if block ~ ~ ~ minecraft:stonecutter run function tcc:item/wrench/rotate/block/stonecutter

execute if block ~ ~ ~ minecraft:loom run function tcc:item/wrench/rotate/block/loom

execute if block ~ ~ ~ minecraft:grindstone run function tcc:item/wrench/rotate/block/grindstone/main

execute if block ~ ~ ~ minecraft:ender_chest run function tcc:item/wrench/rotate/block/ender_chest/main

execute if block ~ ~ ~ minecraft:repeater[locked=false] run function tcc:item/wrench/rotate/block/repeater/main

execute if block ~ ~ ~ minecraft:comparator run function tcc:item/wrench/rotate/block/comparator/main

execute if block ~ ~ ~ minecraft:iron_trapdoor[powered=false] run function tcc:item/wrench/rotate/block/iron_trapdoor/main

execute if block ~ ~ ~ #minecraft:stairs run function tcc:item/wrench/rotate/block_tag/stairs

execute if block ~ ~ ~ #tcc:froglights run function tcc:item/wrench/rotate/block_tag/froglights

execute if block ~ ~ ~ #tcc:wrench_rotatable/creative_only run function tcc:item/wrench/rotate/creative_only/main

playsound tcc:item.wrench.rotate_block block @a[distance=..16]
function tcc:item/wrench/damage