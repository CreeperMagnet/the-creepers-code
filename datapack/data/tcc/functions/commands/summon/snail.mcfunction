############################################################
# Description: Summons an iceologer
# Creator: CreeperMagnet_
############################################################

summon wandering_trader ~ ~ ~ {CustomName:'{"translate":"entity.tcc.snail"}',Attributes:[{Base:6.0d,Name:"minecraft:generic.max_health"},{Base:0.1d,Name:"minecraft:generic.movement_speed"}],Health:6.0f,Team:"tcc.antivillager",DeathLootTable:"tcc:entities/snail",ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f],Offers:{Recipes:[]},ActiveEffects:[{Id:14b,Duration:100000,Amplifier:0b,ShowParticles:0b}],Silent:1b,Tags:["tcc.entity","tcc.snail","tcc.not_fed_beetroot","tcc.trader_entity","global.ignore"],ArmorItems:[{},{},{},{id:"minecraft:structure_block",Count:1b,tag:{tcc:{storage:{model_items:[{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16777215},CustomModelData:330016}},{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16777215},CustomModelData:330016}},{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16777215},CustomModelData:330016}}]}},CustomModelData:330000}}],HandItems:[{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:330016,display:{color:16777215}}}]}

tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.tcc.snail"}]}
tag @s add tcc.no_space
function tcc:entity/player/gamerule_tellraw/no_feedback_chat_message/load
