############################################################
# Description: Checks a block tag
# Creator: CreeperMagnet_
############################################################

execute if block ~ ~ ~ #minecraft:shulker_boxes run function tcc:item/wrench/rotate/block_tag/block_entities/shulker_boxes

execute if block ~ ~ ~ #tcc:furnaces run function tcc:item/wrench/rotate/block_tag/block_entities/furnaces

execute if block ~ ~ ~ minecraft:chest[type=single] run function tcc:item/wrench/rotate/block/chest/main

execute if block ~ ~ ~ minecraft:trapped_chest[type=single] run function tcc:item/wrench/rotate/block/trapped_chest/main

execute if block ~ ~ ~ minecraft:dispenser run function tcc:item/wrench/rotate/block/dispenser/main

execute if block ~ ~ ~ minecraft:dropper run function tcc:item/wrench/rotate/block/dropper/main

execute if block ~ ~ ~ minecraft:barrel run function tcc:item/wrench/rotate/block/barrel/main

execute if block ~ ~ ~ minecraft:hopper run function tcc:item/wrench/rotate/block/hopper/main

data modify block ~ ~ ~ Items set from storage tcc:storage root.temp.wrench_block_data.Items
data modify block ~ ~ ~ CustomName set from storage tcc:storage root.temp.wrench_block_data.CustomName
data modify block ~ ~ ~ Lock set from storage tcc:storage root.temp.wrench_block_data.Lock
data modify block ~ ~ ~ LootTable set from storage tcc:storage root.temp.wrench_block_data.LootTable
data modify block ~ ~ ~ LootTableSeed set from storage tcc:storage root.temp.wrench_block_data.LootTableSeed