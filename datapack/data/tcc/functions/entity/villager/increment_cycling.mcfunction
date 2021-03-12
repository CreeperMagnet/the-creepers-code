############################################################
# Description:  Increments durability of trades
# Creator: CreeperMagnet_
############################################################

execute if entity @s[nbt={Offers:{Recipes:[{buy:{tag:{tcc:{id:"cycler_trade",cycle_state:3}}}}]}},nbt={VillagerData:{profession:"minecraft:toolsmith"}}] run function tcc:entity/villager/toolsmith/generate_trade
execute if entity @s[nbt={Offers:{Recipes:[{buy:{tag:{tcc:{id:"cycler_trade",cycle_state:3}}}}]}},nbt={VillagerData:{profession:"minecraft:mason"}}] run function tcc:entity/villager/mason/generate_trade
data modify entity @s[tag=!tcc.tag,nbt={Offers:{Recipes:[{buy:{tag:{tcc:{id:"cycler_trade",cycle_state:2}}}}]}}] Offers.Recipes[2].buy.tag set value {CustomModelData:330003,tcc:{id:"cycler_trade",cycle_state:3}}
data modify entity @s[tag=!tcc.tag,nbt={Offers:{Recipes:[{buy:{tag:{tcc:{id:"cycler_trade",cycle_state:1}}}}]}}] Offers.Recipes[2].buy.tag set value {CustomModelData:330002,tcc:{id:"cycler_trade",cycle_state:2}}
data modify entity @s[tag=!tcc.tag,nbt={Offers:{Recipes:[{buy:{tag:{tcc:{id:"cycler_trade",cycle_state:0}}}}]}}] Offers.Recipes[2].buy.tag set value {CustomModelData:330001,tcc:{id:"cycler_trade",cycle_state:1}}


tag @s remove tcc.tag
particle minecraft:happy_villager ~ ~ ~ 0.5 0.5 0.5 1 20 normal
data modify entity @s Offers.Recipes[2].uses set value 1
data modify entity @s Offers.Recipes[2].demand set value 0
data modify entity @s RestocksToday set value 1
