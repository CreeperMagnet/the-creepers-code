############################################################
# Commands to run when the villager levels up
############################################################

tag @s add tcc.archaeologist.level_4

data remove entity @s Offers.Recipes[6]
data remove entity @s Offers.Recipes[6]
data remove entity @s Offers.Recipes[6]

data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:dirt",Count:1b},maxUses:16,uses:0,priceMultiplier:0.2f,specialPrice:0,demand:0,xp:30}
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:dirt",Count:1b},maxUses:3,uses:0,priceMultiplier:0.2f,specialPrice:0,demand:0,xp:30}

# Trade 7
loot replace entity @s weapon.mainhand 2 loot tcc:gameplay/trades/archaeologist/trade_7
data modify entity @s Offers.Recipes[-2].buy set from entity @s HandItems[0]
data modify entity @s Offers.Recipes[-2].sell set from entity @s HandItems[1]

# Trade 8
loot replace entity @s weapon.mainhand 2 loot tcc:gameplay/trades/archaeologist/trade_8/buy
data modify entity @s Offers.Recipes[-1].buy set from entity @s HandItems[0]
data modify entity @s Offers.Recipes[-1].buyB set from entity @s HandItems[1]
loot replace entity @s weapon.mainhand 1 loot tcc:gameplay/trades/archaeologist/trade_8/sell
execute if entity @s[nbt={HandItems:[{id:"minecraft:map"}]}] run data modify entity @s HandItems[0] set value {id:"minecraft:map",Count:1b}
data modify entity @s Offers.Recipes[-1].sell set from entity @s HandItems[0]


item replace entity @s weapon.mainhand with minecraft:structure_block{CustomModelData:330064}
item replace entity @s weapon.offhand with air
