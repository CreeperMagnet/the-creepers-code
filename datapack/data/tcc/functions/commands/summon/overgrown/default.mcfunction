# Summons an overgrown

summon minecraft:skeleton ~ ~ ~ {Team:"tcc.no_nametag",Tags:["tcc.modified_vanilla_entity","tcc.overgrown","tcc.burns_in_sunlight","tcc.ten_second_clock"],DeathLootTable:"tcc:entities/overgrown/default",HandItems:[{id:"minecraft:bow",Count:1b,tag:{CustomModelData:330000}},{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomModelData:330000,Potion:"minecraft:poison"}}],ArmorItems:[{},{},{},{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330001}}],ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f],CustomName:'{"translate":"entity.tcc.overgrown"}'}

tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.tcc.overgrown"}]}
tag @s[type=minecraft:player] add tcc.no_space
execute if entity @s[type=minecraft:player] run function tcc:entity/player/gamerule_tellraw/no_feedback_chat_message/load
