############################################################
# Commands to run when the villager levels up
############################################################

tag @s add tcc.jeweler.level_5

data remove entity @s Offers.Recipes[7]
data remove entity @s Offers.Recipes[7]
data remove entity @s Offers.Recipes[7]

data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:dirt",Count:1b},maxUses:3,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0}

# Trade 8
loot replace entity @s weapon.mainhand 2 loot tcc:gameplay/trades/jeweler/trade_8
data modify entity @s Offers.Recipes[-1].buy set from entity @s HandItems[0]
data modify entity @s Offers.Recipes[-1].sell set from entity @s HandItems[1]

item replace entity @s weapon.mainhand with minecraft:structure_block{CustomModelData:330064}
item replace entity @s weapon.offhand with air
