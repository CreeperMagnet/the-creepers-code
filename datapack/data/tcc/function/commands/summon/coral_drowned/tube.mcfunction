# Summons a coral drowned

summon minecraft:drowned ~ ~ ~ {Team:"smithed.prevent_aggression",Tags:["tcc.modified_vanilla_entity","tcc.coral_drowned","tcc.coral_drowned.tube","tcc.burns_in_sunlight","tcc.ten_second_clock"],DeathLootTable:"tcc:entities/coral_drowned/tube",HandItems:[{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:entity/coral_drowned/arm/tube"}},{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:entity/coral_drowned/arm/tube"}}],ArmorItems:[{},{},{},{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:entity/coral_drowned/head/tube"}}],ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f]}

tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.minecraft.drowned"}]}
