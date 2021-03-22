############################################################
# Description: Sets trades for newly spawned toolsmiths
# Creator: CreeperMagnet_
############################################################

# Primary Offer

# Create new offers
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:coarse_dirt",Count:1b},maxUses:1,uses:1,priceMultiplier:0.05f,specialPrice:0,demand:0}
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:dirt",Count:1b},maxUses:1,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0}

# Primary (Locked) Item

loot replace entity @s weapon.mainhand 1 loot tcc:trades/mason/buy
data modify entity @s Offers.Recipes[-2].buy set from entity @s HandItems[0]

## Set selling tags

loot replace entity @s weapon.mainhand 2 loot tcc:trades/mason/buyb_sell
data modify entity @s Offers.Recipes[-2].buyB set from entity @s HandItems[0]
data modify entity @s Offers.Recipes[-2].sell set from entity @s HandItems[1]

# Secondary Item

loot replace entity @s weapon.mainhand 1 loot tcc:trades/mason/buy
data modify entity @s Offers.Recipes[-1].buy set from entity @s HandItems[0]

## Set selling tags

loot replace entity @s weapon.mainhand 2 loot tcc:trades/mason/buyb_sell
data modify entity @s Offers.Recipes[-1].buyB set from entity @s HandItems[0]
data modify entity @s Offers.Recipes[-1].sell set from entity @s HandItems[1]


# Setting NBT to lock the items up

data modify entity @s Offers.Recipes[-2].buy.tag merge value {CustomModelData:330000,tcc:{id:"cycler_trade",cycle_state:0}}
item entity @s weapon.mainhand replace air
item entity @s weapon.offhand replace air
