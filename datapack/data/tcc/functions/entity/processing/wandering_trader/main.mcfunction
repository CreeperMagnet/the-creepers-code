# Adds new trades to wandering traders

data modify entity @s Offers.Recipes set value []

loot replace entity @s weapon.mainhand 2 loot tcc:trades/wandering_trader/buy
function tcc:entity/processing/wandering_trader/add_trade

loot replace entity @s weapon.mainhand 2 loot tcc:trades/wandering_trader/seeds
function tcc:entity/processing/wandering_trader/add_trade

loot replace entity @s weapon.mainhand 2 loot tcc:trades/wandering_trader/flowers
function tcc:entity/processing/wandering_trader/add_trade

loot replace entity @s weapon.mainhand 2 loot tcc:trades/wandering_trader/saplings
function tcc:entity/processing/wandering_trader/add_trade


loot replace entity @s weapon.mainhand 2 loot tcc:trades/wandering_trader/cave_items
function tcc:entity/processing/wandering_trader/add_trade


loot replace entity @s weapon.mainhand 2 loot tcc:trades/wandering_trader/desert_items
function tcc:entity/processing/wandering_trader/add_trade


loot replace entity @s weapon.mainhand 2 loot tcc:trades/wandering_trader/jungle_items
function tcc:entity/processing/wandering_trader/add_trade


loot replace entity @s weapon.mainhand 2 loot tcc:trades/wandering_trader/ocean_items
function tcc:entity/processing/wandering_trader/add_trade


loot replace entity @s weapon.mainhand 2 loot tcc:trades/wandering_trader/bucketed_mob/main
function tcc:entity/processing/wandering_trader/add_trade

item replace entity @s weapon.mainhand with minecraft:air
item replace entity @s weapon.offhand with minecraft:air
