# Adds cherry grove map trade to plains cartographers

loot replace entity @s weapon.mainhand 2 loot tcc:gameplay/trades/cartographer/trade_2/buy
data modify entity @s Offers.Recipes[-1].buy set from entity @s HandItems[0]
data modify entity @s Offers.Recipes[-1].buyB set from entity @s HandItems[1]
loot replace entity @s weapon.mainhand 2 loot tcc:gameplay/trades/cartographer/trade_2/sell
execute if entity @s[nbt={HandItems:[{id:"minecraft:map"}]}] run data modify entity @s HandItems[0] set value {id:"minecraft:map",Count:1b}
data modify entity @s Offers.Recipes[-1].sell set from entity @s HandItems[0]


item replace entity @s weapon.mainhand with minecraft:air
item replace entity @s weapon.offhand with minecraft:air
