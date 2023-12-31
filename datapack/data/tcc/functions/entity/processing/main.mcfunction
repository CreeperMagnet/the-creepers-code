############################################################
# Modifies vanilla entities
############################################################

execute if entity @s[type=minecraft:zombie,predicate=tcc:entity/spawning/glow_lichen_zombie] unless entity @a[distance=..20] run data merge entity @s {Tags:["tcc.glow_lichen_zombie","tcc.burns_in_sunlight","tcc.ten_second_clock"],DeathLootTable:"tcc:entities/glow_lichen_zombie",HandItems:[{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330020}},{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330020}}],ArmorItems:[{},{},{},{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330021}}],ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f]}
execute if entity @s[type=minecraft:witch,predicate=tcc:entity/spawning/geomancer_spawning] run function tcc:entity/geomancer/spawn
execute if entity @s[type=minecraft:pig,predicate=!tcc:entity/baby] if biome ~ ~ ~ #tcc:spawns_snails run function tcc:entity/snail/spawn
execute if entity @s[type=minecraft:drowned] run function tcc:entity/processing/drowned/main
execute if entity @s[type=minecraft:wandering_trader] run function tcc:entity/processing/wandering_trader/main
execute if entity @s[type=#tcc:illagers] run function tcc:entity/processing/illagers
execute if entity @s[type=minecraft:zombie_villager,nbt={VillagerData:{profession:"minecraft:fisherman"},Offers:{Recipes:[{sell:{tag:{tcc:{}}}}]}}] run function tcc:entity/archaeologist/zombie/set_tags
execute if entity @s[type=#tcc:prevent_aggression] run team join smithed.prevent_aggression @s
execute if entity @s[type=minecraft:skeleton] if biome ~ ~ ~ #tcc:spawns_overgrown if predicate tcc:random_chance/0.5 unless entity @a[distance=..20] run function tcc:entity/processing/overgrown
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:scute"}}] unless data entity @s Thrower run data modify entity @s Age set value -18000s
tag @s add tcc.modified_vanilla_entity
