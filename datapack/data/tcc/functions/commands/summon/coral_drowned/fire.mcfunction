# Summons a coral drowned

summon minecraft:drowned ~ ~ ~ {Team:"smithed.prevent_aggression",Tags:["tcc.modified_vanilla_entity","tcc.coral_drowned","tcc.coral_drowned.fire","tcc.burns_in_sunlight","tcc.ten_second_clock"],DeathLootTable:"tcc:entities/coral_drowned/fire",HandItems:[{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330012}},{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330012}}],ArmorItems:[{},{},{},{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330013}}],ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f]}

tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.minecraft.drowned"}]}
tag @s[type=minecraft:player] add tcc.no_space
execute if entity @s[type=minecraft:player] run function tcc:entity/player/gamerule_tellraw/no_feedback_chat_message/load
