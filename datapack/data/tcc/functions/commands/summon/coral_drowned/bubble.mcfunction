############################################################
# Description: Summons a coral drowned
# Creator: Ellivers
############################################################

summon drowned ~ ~ ~ {Team:"tcc.antivillager",Tags:["tcc.modified_vanilla_entity","tcc.coral_drowned","tcc.coral_drowned.bubble"],DeathLootTable:"tcc:entities/coral_drowned/bubble",HandItems:[{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330050}},{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330050}}],ArmorItems:[{},{},{},{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330051}}],ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f]}

tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.minecraft.drowned"}]}
tag @s add tcc.no_space
function tcc:entity/player/gamerule_tellraw/no_feedback_chat_message/load
