############################################################
# Summons an enchanter
############################################################

summon wandering_trader ~ ~ ~ {CustomName:'{"translate":"entity.tcc.enchanter"}',Team:"smithed.prevent_aggression",DeathLootTable:"tcc:entities/enchanter",ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f],Offers:{Recipes:[]},ActiveEffects:[{Id:14,Duration:100000,Amplifier:0b,ShowParticles:0b}],Silent:1b,Tags:["tcc.tick","tcc.second_clock","tcc.ten_second_clock","tcc.enchanter","tcc.illager","tcc.trader_entity","smithed.entity"],ArmorItems:[{},{},{},{id:"minecraft:structure_block",Count:1b,tag:{tcc:{custom_model_data:{head:330038,idle:330040,moving:330042,spellcasting:330044}},CustomModelData:330038}}],HandItems:[{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330040}}]}

tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.tcc.enchanter"}]}
tag @s[type=player] add tcc.no_space
execute if entity @s[type=player] run function tcc:entity/player/gamerule_tellraw/no_feedback_chat_message/load
