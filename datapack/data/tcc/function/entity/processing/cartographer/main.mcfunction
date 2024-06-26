# Adds new trades to cartographers

execute if data entity @s VillagerData{type:"minecraft:plains"} if predicate tcc:random_chance/0.5 run function tcc:entity/processing/cartographer/cherry_grove_map_trade

tag @s add tcc.modified_vanilla_entity
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:dirt",count:1},maxUses:12,uses:0,xp:5,priceMultiplier:0.05f,specialPrice:0,demand:0}

loot replace entity @s weapon.mainhand 2 loot tcc:trades/cartographer/trade_1/buy
data modify entity @s Offers.Recipes[-1].buy set from entity @s HandItems[0]
data modify entity @s Offers.Recipes[-1].buyB set from entity @s HandItems[1]
loot replace entity @s weapon.mainhand 2 loot tcc:trades/cartographer/trade_1/sell
execute if entity @s[nbt={HandItems:[{id:"minecraft:map"}]}] run data modify entity @s HandItems[0] set value {id:"minecraft:map",count:1}
data modify entity @s Offers.Recipes[-1].sell set from entity @s HandItems[0]


item replace entity @s weapon.mainhand with minecraft:air
item replace entity @s weapon.offhand with minecraft:air
