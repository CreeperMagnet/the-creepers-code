# Summons a glow lichen zombie

summon minecraft:zombie ~ ~ ~ {Team:"smithed.prevent_aggression",Tags:["tcc.modified_vanilla_entity","tcc.glow_lichen_zombie","tcc.burns_in_sunlight","tcc.ten_second_clock"],DeathLootTable:"tcc:entities/glow_lichen_zombie",HandItems:[{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:entity/glow_lichen_zombie/arm"}},{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:entity/glow_lichen_zombie/arm"}}],ArmorItems:[{},{},{},{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:entity/glow_lichen_zombie/head"}}],ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f]}

tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.minecraft.zombie"}]}
