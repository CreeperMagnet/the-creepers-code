# Commands to run when the villager levels up

tag @s add tcc.archaeologist.level_2

data remove entity @s Offers.Recipes[2]
data remove entity @s Offers.Recipes[2]
data remove entity @s Offers.Recipes[2]

data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:dirt",count:1},maxUses:12,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,xp:5}
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:dirt",count:1},maxUses:12,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,xp:10}

# Trade 3
loot replace entity @s weapon.mainhand 2 loot tcc:trades/archaeologist/trade_3
data modify entity @s Offers.Recipes[-2].buy set from entity @s HandItems[0]
data modify entity @s Offers.Recipes[-2].sell set from entity @s HandItems[1]

# Trade 4
loot replace entity @s weapon.mainhand 2 loot tcc:trades/archaeologist/trade_4
data modify entity @s Offers.Recipes[-1].buy set from entity @s HandItems[0]
data modify entity @s Offers.Recipes[-1].sell set from entity @s HandItems[1]


item replace entity @s weapon.mainhand with minecraft:shears[minecraft:item_model="tcc:entity/archaeologist/body/main"]
item replace entity @s weapon.offhand with minecraft:air
