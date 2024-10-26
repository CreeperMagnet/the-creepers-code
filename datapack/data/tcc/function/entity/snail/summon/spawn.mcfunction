# Summons a basic snail then edits it to have the proper data and other content

summon minecraft:wandering_trader ~ -100 ~ {CustomName:'{"translate":"entity.tcc.snail"}',attributes:[{base:16.0d,id:"minecraft:max_health"},{base:0.1d,id:"minecraft:movement_speed"},{base:0.5d,id:"minecraft:scale"}],Health:16.0f,Team:"smithed.prevent_aggression",DeathLootTable:"tcc:entities/snail",ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f],Offers:{Recipes:[]},active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:0b}],Silent:1b,Tags:["tcc.tick","tcc.second_clock","tcc.ten_second_clock","tcc.snail","tcc.snail.brown","tcc.trader_entity","tcc.snail.start","smithed.entity","tcc.trader_entity.no_head","tcc.trader_entity.static","tcc.cannot_glow"],ArmorItems:[{},{},{id:"minecraft:shears",count:1,components:{"minecraft:item_model":"tcc:entity/snail/brown/main"}},{id:"minecraft:shears",count:1,components:{"minecraft:item_model":"minecraft:air"}}],HandItems:[{},{id:"minecraft:shears",count:1,components:{"minecraft:item_model":"tcc:entity/snail/brown/main"}}]}
execute as @n[tag=tcc.snail.start,type=minecraft:wandering_trader] run function tcc:entity/snail/summon/initiate
