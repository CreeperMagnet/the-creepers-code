############################################################
# Description: Sets trades for newly spawned toolsmiths
# Creator: CreeperMagnet_
############################################################

data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:dirt",Count:1b},maxUses:3,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0}
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:dirt",Count:1b},maxUses:10,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0}

# Trade 1
loot replace entity @s weapon.mainhand 2 loot tcc:trades/toolsmith/trade_1
data modify entity @s Offers.Recipes[-2].buy set from entity @s HandItems[0]
data modify entity @s Offers.Recipes[-2].sell set from entity @s HandItems[1]

# Trade 2
loot replace entity @s weapon.mainhand 2 loot tcc:trades/toolsmith/trade_2
data modify entity @s Offers.Recipes[-1].buy set from entity @s HandItems[0]
data modify entity @s Offers.Recipes[-1].sell set from entity @s HandItems[1]

item entity @s weapon.mainhand replace air
item entity @s weapon.offhand replace air
