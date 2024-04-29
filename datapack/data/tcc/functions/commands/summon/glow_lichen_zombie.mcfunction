# Summons a glow lichen zombie

summon minecraft:zombie ~ ~ ~ {Team:"smithed.prevent_aggression",Tags:["tcc.modified_vanilla_entity","tcc.glow_lichen_zombie","tcc.burns_in_sunlight","tcc.ten_second_clock"],DeathLootTable:"tcc:entities/glow_lichen_zombie",HandItems:[{id:"minecraft:structure_block",count:1,components:{"minecraft:custom_model_data":330020}},{id:"minecraft:structure_block",count:1,components:{"minecraft:custom_model_data":330020}}],ArmorItems:[{},{},{},{id:"minecraft:structure_block",count:1,components:{"minecraft:custom_model_data":330021}}],ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f]}

tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.minecraft.zombie"}]}
