# Summons a sponge drowned

summon minecraft:drowned ~ ~ ~ {Team:"smithed.prevent_aggression",Tags:["tcc.modified_vanilla_entity","tcc.sponge_drowned","tcc.burns_in_sunlight","tcc.ten_second_clock"],DeathLootTable:"tcc:entities/sponge_drowned",HandItems:[{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:entity/sponge_drowned/arm"}},{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:entity/sponge_drowned/arm"}}],ArmorItems:[{},{},{},{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:entity/sponge_drowned/head"}}],ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f]}

tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.minecraft.drowned"}]}
