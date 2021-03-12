############################################################
# Description:  Generates a new trade for the villager and copies over old ones
# Creator: CreeperMagnet_
############################################################
tag @s add tcc.tag
data modify entity @s Offers.Recipes[3] set from entity @s Offers.Recipes[2]
data remove entity @s Offers.Recipes[3].buy.tag

# Secondary Item

loot replace entity @s weapon.mainhand 1 loot tcc:trades/toolsmith/buy
data modify entity @s Offers.Recipes[2].buy set from entity @s HandItems[0]

## Set selling tags

loot replace entity @s weapon.mainhand 1 loot tcc:trades/toolsmith/sell
data modify entity @s Offers.Recipes[2].sell set from entity @s HandItems[0]
data modify entity @s Offers.Recipes[2].demand set value 0
data modify entity @s Offers.Recipes[3].demand set value 0

data modify entity @s Offers.Recipes[2].buy.tag merge value {CustomModelData:330000,tcc:{id:"cycler_trade",cycle_state:0}}
replaceitem entity @s weapon.mainhand air
