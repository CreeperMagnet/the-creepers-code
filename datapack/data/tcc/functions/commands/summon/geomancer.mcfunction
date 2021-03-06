############################################################
# Description: Summons a geomancer
# Creator: CreeperMagnet_
############################################################

summon wandering_trader ~ ~ ~ {CustomName:'{"translate":"entity.tcc.geomancer"}',Attributes:[{Base:40.0d,Name:"minecraft:generic.max_health"}],Health:40.0f,Team:"tcc.antivillager",DeathLootTable:"tcc:entities/geomancer",ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f],Offers:{Recipes:[]},ActiveEffects:[{Id:14b,Duration:100000,Amplifier:0b,ShowParticles:0b}],Silent:1b,Tags:["tcc.entity","tcc.geomancer","tcc.trader_entity","global.ignore"],ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{tcc:{storage:{model_items:[{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16777215},CustomModelData:330005}},{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16777215},CustomModelData:330006}},{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16777215},CustomModelData:330007}}]}},CustomModelData:330008,display:{color:16777215}}}],HandItems:[{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:330005,display:{color:16777215}}}]}

tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.tcc.geomancer"}]}
tag @s add tcc.no_space
function tcc:entity/player/gamerule_tellraw/no_feedback_chat_message/load
