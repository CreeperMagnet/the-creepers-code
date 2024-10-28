# Sets the initial trades of a archaeologist

tag @s add tcc.archaeologist
tag @s add tcc.tick

item replace entity @s armor.head with minecraft:shears[minecraft:item_model="tcc:entity/archaeologist/head/main"]
execute if entity @s[nbt={CustomName:'{"translate":"entity.tcc.hide_name","font":"tcc:technical"}'}] run team join tcc.no_nametag
execute if entity @s[nbt={CustomName:'{"translate":"entity.tcc.hide_name","font":"tcc:technical"}'}] run data modify entity @s CustomName set value '{"translate":"entity.tcc.archaeologist"}'
execute unless data entity @s CustomName run team join tcc.no_nametag
execute unless data entity @s CustomName run data modify entity @s CustomName set value '{"translate":"entity.tcc.archaeologist"}'
data modify entity @s ArmorDropChances set value [-10000.0f,-10000.0f,-10000.0f,-10000.0f]
data modify entity @s HandDropChances set value [-10000.0f,-10000.0f]


data modify entity @s Offers.Recipes set value [{buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:dirt",count:1},maxUses:16,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,xp:1},{buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:dirt",count:1},maxUses:3,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,xp:2}]


# Trade 1
loot replace entity @s weapon.mainhand 2 loot tcc:trades/archaeologist/trade_1
data modify entity @s Offers.Recipes[0].buy set from entity @s HandItems[0]
data modify entity @s Offers.Recipes[0].sell set from entity @s HandItems[1]

# Trade 2
loot replace entity @s weapon.mainhand 2 loot tcc:trades/archaeologist/trade_2
data modify entity @s Offers.Recipes[1].buy set from entity @s HandItems[0]
data modify entity @s Offers.Recipes[1].sell set from entity @s HandItems[1]

item replace entity @s weapon.mainhand with minecraft:shears[minecraft:item_model="tcc:entity/archaeologist/body/main"]
item replace entity @s weapon.offhand with minecraft:air