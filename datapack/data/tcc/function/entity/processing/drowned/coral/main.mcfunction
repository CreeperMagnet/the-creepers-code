# Chooses coral drowned stuff

execute if entity @s[predicate=tcc:location_check/near_ocean_monument] run data merge entity @s {Tags:["tcc.sponge_drowned","tcc.burns_in_sunlight","tcc.ten_second_clock"],DeathLootTable:"tcc:entities/sponge_drowned",HandItems:[{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:entity/sponge_drowned/arm"}},{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:entity/sponge_drowned/arm"}}],ArmorItems:[{},{},{},{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:entity/sponge_drowned/head"}}],ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f]}
execute unless entity @s[predicate=tcc:location_check/near_ocean_monument] run function tcc:entity/processing/drowned/coral/discern_chance