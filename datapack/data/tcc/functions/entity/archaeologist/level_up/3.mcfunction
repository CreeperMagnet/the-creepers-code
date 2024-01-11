# Commands to run when the villager levels up

tag @s add tcc.archaeologist.level_3

data remove entity @s Offers.Recipes[4]
data remove entity @s Offers.Recipes[4]
data remove entity @s Offers.Recipes[4]

data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:dirt",Count:1b},maxUses:16,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,xp:10}
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:dirt",Count:1b},maxUses:16,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,xp:15}

# Trade 5
loot replace entity @s weapon.mainhand 2 loot tcc:gameplay/trades/archaeologist/trade_5
data modify entity @s Offers.Recipes[-2].buy set from entity @s HandItems[0]
data modify entity @s Offers.Recipes[-2].sell set from entity @s HandItems[1]

# Trade 6
loot replace entity @s weapon.mainhand 2 loot tcc:gameplay/trades/archaeologist/trade_6
data modify entity @s Offers.Recipes[-1].buy set from entity @s HandItems[0]
data modify entity @s Offers.Recipes[-1].sell set from entity @s HandItems[1]

item replace entity @s weapon.mainhand with minecraft:structure_block{CustomModelData:330064}
item replace entity @s weapon.offhand with minecraft:air
