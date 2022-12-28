############################################################
# Modifies vanilla entities
############################################################

execute if entity @s[type=minecraft:zombie,predicate=tcc:entity/spawning/glow_lichen_zombie] run data merge entity @s {Tags:["tcc.glow_lichen_zombie"],DeathLootTable:"tcc:entities/glow_lichen_zombie",HandItems:[{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330020}},{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330020}}],ArmorItems:[{},{},{},{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330021}}],ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f]}
execute if entity @s[type=minecraft:witch,predicate=tcc:entity/spawning/geomancer_spawning] run function tcc:entity/geomancer/spawn
execute if entity @s[type=minecraft:pig,predicate=!tcc:entity/baby] if biome ~ ~ ~ #tcc:spawns_snails run function tcc:entity/snail/spawn
execute if entity @s[type=minecraft:trader_llama,predicate=!tcc:entity/baby] run function tcc:entity/processing/trader_llama
execute if entity @s[type=minecraft:drowned,predicate=tcc:entity/holding/nothing_and_nothing_on_head,predicate=tcc:entity/spawning/sponge_drowned] run data merge entity @s {Tags:["tcc.sponge_drowned"],DeathLootTable:"tcc:entities/sponge_drowned",HandItems:[{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330018}},{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330018}}],ArmorItems:[{},{},{},{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330019}}],ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f]}
execute if entity @s[type=minecraft:drowned,predicate=tcc:entity/holding/nothing_and_nothing_on_head] run function tcc:entity/processing/coral_drowned/discern_chance
execute if entity @s[type=minecraft:drowned,predicate=tcc:entity/spawning/drowned_swordfish] run loot replace entity @s weapon.mainhand loot tcc:items/swordfish
execute if entity @s[type=minecraft:wandering_trader] run function tcc:entity/processing/wandering_trader/main
execute if entity @s[type=#tcc:illagers] run function tcc:entity/processing/illagers
tag @s add tcc.modified_vanilla_entity
