############################################################
# Adds new trades to wandering traders
############################################################

data remove entity @s Offers.Recipes

loot replace entity @s weapon.mainhand 2 loot tcc:gameplay/trades/wandering_trader/seeds
function tcc:entity/processing/wandering_trader/add_trade


loot replace entity @s weapon.mainhand 2 loot tcc:gameplay/trades/wandering_trader/saplings
function tcc:entity/processing/wandering_trader/add_trade


loot replace entity @s weapon.mainhand 2 loot tcc:gameplay/trades/wandering_trader/cave_items
function tcc:entity/processing/wandering_trader/add_trade


loot replace entity @s weapon.mainhand 2 loot tcc:gameplay/trades/wandering_trader/desert_items
function tcc:entity/processing/wandering_trader/add_trade


loot replace entity @s weapon.mainhand 2 loot tcc:gameplay/trades/wandering_trader/jungle_items
function tcc:entity/processing/wandering_trader/add_trade


loot replace entity @s weapon.mainhand 2 loot tcc:gameplay/trades/wandering_trader/ocean_items
function tcc:entity/processing/wandering_trader/add_trade


loot replace entity @s weapon.mainhand 2 loot tcc:gameplay/trades/wandering_trader/bucketed_mob
function tcc:entity/processing/wandering_trader/add_trade

item replace entity @s weapon.mainhand with air
item replace entity @s weapon.offhand with air
