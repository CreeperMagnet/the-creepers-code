# Summons an enchanter

summon minecraft:wandering_trader ~ ~ ~ {CustomName:'{"translate":"entity.tcc.enchanter"}',Team:"smithed.prevent_aggression",DeathLootTable:"tcc:entities/enchanter",ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f],Offers:{Recipes:[]},active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:0b}],Silent:1b,Tags:["tcc.tick","tcc.second_clock","tcc.ten_second_clock","tcc.enchanter","tcc.illager","tcc.trader_entity","smithed.entity"],ArmorItems:[{},{},{id:"minecraft:shears",count:1,components:{"minecraft:item_model":"tcc:entity/enchanter/body/normal/main"}},{id:"minecraft:shears",count:1,components:{"minecraft:item_model":"tcc:entity/enchanter/head/main"}}],HandItems:[{},{id:"minecraft:shears",count:1,components:{"minecraft:item_model":"tcc:entity/enchanter/body/normal/main"}}]}

tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.tcc.enchanter"}]}
