# Rotates the block you're looking at

execute align xyz positioned ~0.5 ~0.5 ~0.5 run playsound tcc:item.wrench.rotate_block block @a[distance=..16]
execute unless entity @s[gamemode=creative] run function tcc:item/wrench/damage

execute if block ~ ~ ~ #tcc:block_entities run data modify storage tcc:temp root.wrench_block_data set from block ~ ~ ~ {}

execute if block ~ ~ ~ #tcc:wrench/block_type/axis run function tcc:item/wrench/rotate/block_type/axis

execute if block ~ ~ ~ #tcc:wrench/block_type/axis_waterloggable run function tcc:item/wrench/rotate/block_type/axis_waterloggable

execute if block ~ ~ ~ #tcc:wrench/block_type/facing_all run function tcc:item/wrench/rotate/block_type/facing_all

execute if block ~ ~ ~ #tcc:wrench/block_type/facing_all_waterloggable run function tcc:item/wrench/rotate/block_type/facing_all_waterloggable

execute if block ~ ~ ~ #tcc:wrench/block_type/facing_all_triggerable run function tcc:item/wrench/rotate/block_type/facing_all_triggerable

execute if block ~ ~ ~ #tcc:wrench/block_type/facing_cardinal run function tcc:item/wrench/rotate/block_type/facing_cardinal

execute if block ~ ~ ~ #tcc:wrench/block_type/facing_cardinal_waterloggable run function tcc:item/wrench/rotate/block_type/facing_cardinal_waterloggable

execute if block ~ ~ ~ #tcc:wrench/block_type/rotation run function tcc:item/wrench/rotate/block_type/rotation

execute if block ~ ~ ~ #tcc:wrench/block_type/rotation_waterloggable run function tcc:item/wrench/rotate/block_type/rotation_waterloggable

execute if block ~ ~ ~ #tcc:wrench/block_type/segmented run function tcc:item/wrench/rotate/block_type/segmented

execute if block ~ ~ ~ #minecraft:rails run function tcc:item/wrench/rotate/block_tag/rails

execute if block ~ ~ ~ #minecraft:stairs run function tcc:item/wrench/rotate/block_tag/stairs

execute if block ~ ~ ~ #minecraft:beehives run function tcc:item/wrench/rotate/block_tag/beehives

execute if block ~ ~ ~ #minecraft:all_hanging_signs run function tcc:item/wrench/rotate/block_tag/all_hanging_signs/main

execute if block ~ ~ ~ #tcc:furnaces run function tcc:item/wrench/rotate/block_tag/furnaces

execute if block ~ ~ ~ minecraft:grindstone run function tcc:item/wrench/rotate/block/grindstone

execute if block ~ ~ ~ minecraft:comparator run function tcc:item/wrench/rotate/block/comparator

execute if block ~ ~ ~ minecraft:lectern run function tcc:item/wrench/rotate/block/lectern

execute if block ~ ~ ~ minecraft:hopper run function tcc:item/wrench/rotate/block/hopper/main

execute if block ~ ~ ~ #tcc:wrench/creative_only run function tcc:item/wrench/rotate/creative_only

execute if block ~ ~ ~ minecraft:chiseled_bookshelf run function tcc:item/wrench/rotate/block/chiseled_bookshelf/main

execute if block ~ ~ ~ minecraft:crafter run function tcc:item/wrench/rotate/block/crafter/main


# Exceptions that *should* be up there, but have to match specific criteria to be able to rotate
execute if block ~ ~ ~ minecraft:piston[extended=false] run function tcc:item/wrench/rotate/macro/facing_all {block:"minecraft:piston"}

execute if block ~ ~ ~ minecraft:sticky_piston[extended=false] run function tcc:item/wrench/rotate/macro/facing_all {block:"minecraft:sticky_piston"}

execute if block ~ ~ ~ #minecraft:fence_gates[open=false,powered=false] run function tcc:item/wrench/rotate/block_tag/fence_gates

execute if block ~ ~ ~ minecraft:chest[type=single] run function tcc:item/wrench/rotate/macro/facing_cardinal_waterloggable {block:"minecraft:chest"}

execute if block ~ ~ ~ minecraft:trapped_chest[type=single] run function tcc:item/wrench/rotate/macro/facing_cardinal_waterloggable {block:"minecraft:trapped_chest"}

execute if block ~ ~ ~ minecraft:repeater[locked=false] run function tcc:item/wrench/rotate/block/repeater

execute if block ~ ~ ~ minecraft:iron_trapdoor[powered=false] run function tcc:item/wrench/rotate/block/iron_trapdoor/main

execute if block ~ ~ ~ minecraft:iron_door[powered=false] run function tcc:item/wrench/rotate/block/iron_door/main

# Restore any block data that was taken away
execute if block ~ ~ ~ #tcc:block_entities run data modify block ~ ~ ~ {} merge from storage tcc:temp root.wrench_block_data

