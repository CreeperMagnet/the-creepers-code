# Adds new trades to wandering traders

data modify entity @s Offers.Recipes set value []

loot replace entity @s weapon.mainhand 2 loot tcc:trades/wandering_trader/buy
function tcc:entity/wandering_trader/add_trade

loot replace entity @s weapon.mainhand 2 loot tcc:trades/wandering_trader/seeds
function tcc:entity/wandering_trader/add_trade

loot replace entity @s weapon.mainhand 2 loot tcc:trades/wandering_trader/flowers
function tcc:entity/wandering_trader/add_trade

loot replace entity @s weapon.mainhand 2 loot tcc:trades/wandering_trader/saplings
function tcc:entity/wandering_trader/add_trade

loot replace entity @s weapon.mainhand 2 loot tcc:trades/wandering_trader/cave_items
function tcc:entity/wandering_trader/add_trade

loot replace entity @s weapon.mainhand 2 loot tcc:trades/wandering_trader/warm_biome_items
function tcc:entity/wandering_trader/add_trade

loot replace entity @s weapon.mainhand 2 loot tcc:trades/wandering_trader/ocean_items
function tcc:entity/wandering_trader/add_trade

loot replace entity @s weapon.mainhand 2 loot tcc:trades/wandering_trader/bucketed_mob/main
function tcc:entity/wandering_trader/add_trade
data modify entity @s Offers.Recipes[-1].maxUses set value 1

item replace entity @s weapon.mainhand with minecraft:air
item replace entity @s weapon.offhand with minecraft:air

tag @s add tcc.modified_vanilla_entity
