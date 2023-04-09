############################################################
# Summons a geomancer
############################################################

summon wandering_trader ~ ~ ~ {CustomName:'{"translate":"entity.tcc.geomancer"}',Attributes:[{Base:40.0d,Name:"minecraft:generic.max_health"}],Health:40.0f,Team:"smithed.prevent_aggression",DeathLootTable:"tcc:entities/geomancer",ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f],Offers:{Recipes:[]},ActiveEffects:[{Id:14,Duration:-1,Amplifier:0b,ShowParticles:0b}],Silent:1b,Tags:["tcc.tick","tcc.second_clock","tcc.ten_second_clock","tcc.geomancer","tcc.illager","tcc.trader_entity","smithed.entity"],ArmorItems:[{},{},{},{id:"minecraft:structure_block",Count:1b,tag:{tcc:{custom_model_data:{head:330046,idle:330048,moving:330050,spellcasting:330052}},CustomModelData:330046}}],HandItems:[{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330048}}]}

tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.tcc.geomancer"}]}
tag @s[type=player] add tcc.no_space
execute if entity @s[type=player] run function tcc:entity/player/gamerule_tellraw/no_feedback_chat_message/load
