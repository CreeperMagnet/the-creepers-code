# Summons a sponge drowned

summon minecraft:drowned ~ ~ ~ {Team:"smithed.prevent_aggression",Tags:["tcc.modified_vanilla_entity","tcc.sponge_drowned","tcc.burns_in_sunlight","tcc.ten_second_clock"],DeathLootTable:"tcc:entities/sponge_drowned",HandItems:[{id:"minecraft:structure_block",count:1,components:{"minecraft:custom_model_data":330018}},{id:"minecraft:structure_block",count:1,components:{"minecraft:custom_model_data":330018}}],ArmorItems:[{},{},{},{id:"minecraft:structure_block",count:1,components:{"minecraft:custom_model_data":330019}}],ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f]}

tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.minecraft.drowned"}]}
tag @s[type=minecraft:player] add tcc.no_space
execute if entity @s[type=minecraft:player] run function tcc:entity/player/gamerule_tellraw/no_feedback_chat_message/load
