# Summons a basic snail then edits it to have the proper data and other content

summon minecraft:wandering_trader ~ -100 ~ {CustomName:'{"translate":"entity.tcc.snail"}',Attributes:[{Base:16.0d,Name:"minecraft:generic.max_health"},{Base:0.1d,Name:"minecraft:generic.movement_speed"},{Base:0.5d,Name:"minecraft:generic.scale"}],Health:16.0f,Team:"smithed.prevent_aggression",DeathLootTable:"tcc:entities/snail",ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f],Offers:{Recipes:[]},active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:0b}],Silent:1b,Tags:["tcc.tick","tcc.second_clock","tcc.ten_second_clock","tcc.snail","tcc.snail.brown","tcc.trader_entity","tcc.snail.start","smithed.entity","tcc.trader_entity.no_head","tcc.trader_entity.static","tcc.cannot_glow"],ArmorItems:[{},{},{},{id:"minecraft:structure_block",count:1,components:{"minecraft:custom_data":{tcc:{custom_model_data:{idle:330074}}},"minecraft:custom_model_data":330000}}],HandItems:[{id:"minecraft:structure_block",count:1,components:{"minecraft:custom_model_data":330074}}]}
execute as @e[tag=tcc.snail.start,limit=1,type=minecraft:wandering_trader] run function tcc:entity/snail/summon/initiate
