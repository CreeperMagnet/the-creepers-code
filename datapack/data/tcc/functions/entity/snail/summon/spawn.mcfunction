############################################################
# Summons a basic snail then edits it to have the proper data and other content
############################################################

summon wandering_trader ~ -100 ~ {CustomName:'{"translate":"entity.tcc.snail"}',Attributes:[{Base:16.0d,Name:"minecraft:generic.max_health"},{Base:0.1d,Name:"minecraft:generic.movement_speed"}],Health:16.0f,Team:"smithed.prevent_aggression",DeathLootTable:"tcc:entities/snail",ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f],Offers:{Recipes:[]},ActiveEffects:[{Id:14,Duration:-1,Amplifier:0b,ShowParticles:0b}],Silent:1b,Tags:["tcc.tick","tcc.second_clock","tcc.ten_second_clock","tcc.snail","tcc.snail.brown","tcc.trader_entity","tcc.snail.start","smithed.entity","tcc.trader_entity.no_head","tcc.trader_entity.static","tcc.cannot_glow"],ArmorItems:[{},{},{},{id:"minecraft:structure_block",Count:1b,tag:{tcc:{custom_model_data:{idle:330074}},CustomModelData:330000}}],HandItems:[{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330074}}]}
execute as @e[tag=tcc.snail.start,limit=1,type=wandering_trader] run function tcc:entity/snail/summon/initiate
