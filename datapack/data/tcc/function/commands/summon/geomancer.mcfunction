# Summons a geomancer

summon minecraft:wandering_trader ~ ~ ~ {CustomName:'{"translate":"entity.tcc.geomancer"}',attributes:[{base:40.0d,id:"minecraft:generic.max_health"}],Health:40.0f,Team:"smithed.prevent_aggression",DeathLootTable:"tcc:entities/geomancer",ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f],Offers:{Recipes:[]},active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:0b}],Silent:1b,Tags:["tcc.tick","tcc.second_clock","tcc.ten_second_clock","tcc.geomancer","tcc.illager","tcc.trader_entity","smithed.entity"],ArmorItems:[{},{},{},{id:"minecraft:structure_block",count:1,components:{"minecraft:custom_data":{tcc:{custom_model_data:{head:330046,idle:330048,moving:330050,spellcasting:330052}}},"minecraft:custom_model_data":330046}}],HandItems:[{id:"minecraft:structure_block",count:1,components:{"minecraft:custom_model_data":330048}}]}

tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.tcc.geomancer"}]}
