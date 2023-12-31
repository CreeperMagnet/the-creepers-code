############################################################
# Commands to give the witch trades
############################################################

data merge entity @s {DespawnDelay:48000,CustomName:'{"translate":"entity.tcc.wandering_witch"}',Team:"smithed.prevent_aggression",DeathLootTable:"tcc:entities/wandering_witch",ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f],Offers:{Recipes:[]},active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:0b}],Silent:1b,Tags:["tcc.tick","tcc.second_clock","tcc.ten_second_clock","tcc.wandering_witch","tcc.has_trades","tcc.trader_entity","smithed.entity"],ArmorItems:[{},{},{},{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330066,tcc:{custom_model_data:{head:330066,idle:330068,moving:330070}}}}],HandItems:[{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330068}}]}
data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.UUID set from entity @s UUID
data remove entity @s Offers.Recipes

loot replace entity @s weapon.mainhand 2 loot tcc:gameplay/trades/wandering_witch/slime_balls
function tcc:entity/wandering_witch/add_trade


loot replace entity @s weapon.mainhand 2 loot tcc:gameplay/trades/wandering_witch/rare_potion_ingredients
function tcc:entity/wandering_witch/add_trade


loot replace entity @s weapon.mainhand 2 loot tcc:gameplay/trades/wandering_witch/ender_pearl
function tcc:entity/wandering_witch/add_trade


loot replace entity @s weapon.mainhand 2 loot tcc:gameplay/trades/wandering_witch/soil_blocks
function tcc:entity/wandering_witch/add_trade


loot replace entity @s weapon.mainhand 2 loot tcc:gameplay/trades/wandering_witch/crop_pottery_sherd
function tcc:entity/wandering_witch/add_trade
data modify entity @s Offers.Recipes[-1].maxUses set value 64


loot replace entity @s weapon.mainhand 2 loot tcc:gameplay/trades/wandering_witch/ancient_explorer_map
function tcc:entity/wandering_witch/add_trade
execute if entity @s[nbt={Offers:{Recipes:[{sell:{id:"minecraft:map"}}]}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:sculk_catalyst",Count:1b}


loot replace entity @s weapon.mainhand 2 loot tcc:gameplay/trades/wandering_witch/witch_hat
function tcc:entity/wandering_witch/add_trade
data modify entity @s Offers.Recipes[-1].maxUses set value 1b

item replace entity @s weapon.mainhand with air
item replace entity @s weapon.offhand with air