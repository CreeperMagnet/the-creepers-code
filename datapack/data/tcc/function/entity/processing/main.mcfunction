# Modifies vanilla entities

execute if entity @s[type=minecraft:zombie,predicate=tcc:location_check/below_0,predicate=tcc:random_chance/0.1] if dimension minecraft:overworld unless entity @a[distance=..20] run data merge entity @s {Tags:["tcc.glow_lichen_zombie","tcc.burns_in_sunlight","tcc.ten_second_clock"],DeathLootTable:"tcc:entities/glow_lichen_zombie",HandItems:[{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:entity/glow_lichen_zombie/arm"}},{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:entity/glow_lichen_zombie/arm"}}],ArmorItems:[{},{},{},{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:entity/glow_lichen_zombie/head"}}],ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f]}
execute if entity @s[type=minecraft:witch] run function tcc:entity/processing/witch
execute if entity @s[type=minecraft:pig,predicate=!tcc:entity_properties/is_baby] if biome ~ ~ ~ #tcc:spawns_snails run function tcc:entity/snail/spawn
execute if entity @s[type=minecraft:drowned] run function tcc:entity/processing/drowned/main
execute if entity @s[type=minecraft:wandering_trader] run function tcc:entity/processing/wandering_trader/main
execute if entity @s[type=minecraft:pillager] if biome ~ ~ ~ #tcc:has_structure/tundra_keep run function tcc:entity/processing/cold_biome_pillager/main
execute if entity @s[type=minecraft:zombie_villager,nbt={VillagerData:{profession:"minecraft:fisherman"},Offers:{Recipes:[{sell:{components:{"minecraft:custom_data":{tcc:{}}}}}]}}] run function tcc:entity/archaeologist/zombie/set_tags
execute if entity @s[type=#tcc:prevent_aggression] run team join smithed.prevent_aggression @s
execute if entity @s[type=#minecraft:undead,predicate=tcc:entity_properties/holding_mace_in_trial_chambers] run data modify entity @s HandDropChances set value [0.1f,0.0f]
execute if entity @s[type=minecraft:item,nbt={Item:{id:"minecraft:turtle_scute"}}] unless data entity @s Thrower run data modify entity @s Age set value -18000s
tag @s add tcc.modified_vanilla_entity
