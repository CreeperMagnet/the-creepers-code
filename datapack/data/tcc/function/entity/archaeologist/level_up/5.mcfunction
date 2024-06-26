# Commands to run when the villager levels up

tag @s add tcc.archaeologist.level_5

data remove entity @s Offers.Recipes[8]
data remove entity @s Offers.Recipes[8]
data remove entity @s Offers.Recipes[8]

data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:dirt",count:1},maxUses:1,uses:0,priceMultiplier:0.2f,specialPrice:0,demand:0}

# Trade 9
loot replace entity @s weapon.mainhand 2 loot tcc:trades/archaeologist/trade_9
data modify entity @s Offers.Recipes[-1].buy set from entity @s HandItems[0]
data modify entity @s Offers.Recipes[-1].sell set from entity @s HandItems[1]

item replace entity @s weapon.mainhand with minecraft:structure_block[minecraft:custom_model_data=330064]
item replace entity @s weapon.offhand with minecraft:air
