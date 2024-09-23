# Commands to give the witch trades

data modify entity @s wander_target set value [I;0,0,0]
execute store result entity @s wander_target[0] int 1 run data get storage tcc:temp root.pos[0]
execute store result entity @s wander_target[1] int 1 run data get storage tcc:temp root.pos[1]
execute store result entity @s wander_target[2] int 1 run data get storage tcc:temp root.pos[2]

data merge entity @s {DespawnDelay:48000,CustomName:'{"translate":"entity.tcc.wandering_witch"}',Team:"smithed.prevent_aggression",DeathLootTable:"tcc:entities/wandering_witch",ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f],Offers:{Recipes:[]},active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:0b}],Silent:1b,Tags:["tcc.tick","tcc.second_clock","tcc.ten_second_clock","tcc.wandering_witch","tcc.has_trades","tcc.trader_entity","smithed.entity"],ArmorItems:[{},{},{},{id:"minecraft:structure_block",count:1,components:{"minecraft:custom_model_data":330066,"minecraft:custom_data":{tcc:{custom_model_data:{head:330066,idle:330068,moving:330070}}}}}],HandItems:[{id:"minecraft:structure_block",count:1,components:{"minecraft:custom_model_data":330068}},{}]}
data modify entity @s Offers.Recipes set value []

loot replace entity @s weapon.mainhand 2 loot tcc:trades/wandering_witch/buy_trade_spider_eye
function tcc:entity/wandering_witch/add_trade


loot replace entity @s weapon.mainhand 2 loot tcc:trades/wandering_witch/buy_trade_fermented_spider_eye
function tcc:entity/wandering_witch/add_trade


loot replace entity @s weapon.mainhand 2 loot tcc:trades/wandering_witch/cauldron_or_chains
function tcc:entity/wandering_witch/add_trade


loot replace entity @s weapon.mainhand 2 loot tcc:trades/wandering_witch/powders
function tcc:entity/wandering_witch/add_trade


loot replace entity @s weapon.mainhand 2 loot tcc:trades/wandering_witch/potions
function tcc:entity/wandering_witch/add_trade
data modify entity @s Offers.Recipes[-1].maxUses set value 1


loot replace entity @s weapon.mainhand 2 loot tcc:trades/wandering_witch/rare_mob_drop
function tcc:entity/wandering_witch/add_trade


loot replace entity @s weapon.mainhand 2 loot tcc:trades/wandering_witch/final_trade
function tcc:entity/wandering_witch/add_trade
data modify entity @s Offers.Recipes[-1].maxUses set value 1


item replace entity @s weapon.mainhand with minecraft:air
item replace entity @s weapon.offhand with minecraft:air

data remove storage tcc:temp root
data modify storage tcc:temp root.UUID set from entity @s UUID
