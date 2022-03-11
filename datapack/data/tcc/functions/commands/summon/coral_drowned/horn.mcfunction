############################################################
# Summons a coral drowned
############################################################

summon drowned ~ ~ ~ {Team:"smithed.prevent_aggression",Tags:["tcc.modified_vanilla_entity","tcc.coral_drowned","tcc.coral_drowned.horn"],DeathLootTable:"tcc:entities/coral_drowned/horn",HandItems:[{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330014}},{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330014}}],ArmorItems:[{},{},{},{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330015}}],ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f]}

tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.minecraft.drowned"}]}
tag @s[type=player] add tcc.no_space
execute if entity @s[type=player] run function tcc:entity/player/gamerule_tellraw/no_feedback_chat_message/load
