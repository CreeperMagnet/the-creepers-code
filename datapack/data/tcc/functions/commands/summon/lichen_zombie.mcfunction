############################################################
# Description: Summons a glow lichen zombie
# Creator: Ellivers
############################################################

summon zombie ~ ~ ~ {Team:"tcc.antivillager",Tags:["tcc.modified_vanilla_entity","tcc.lichen_zombie"],DeathLootTable:"tcc:entities/lichen_zombie",HandItems:[{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330058}},{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330058}}],ArmorItems:[{},{},{},{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330059}}],ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f]}

tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.minecraft.zombie"}]}
tag @s add tcc.no_space
function tcc:entity/player/gamerule_tellraw/no_feedback_chat_message/load
