############################################################
# Description: Turns the witch into a wandering trader, and keeps its data from when the witch was a trader before
# Creator: Ellivers
############################################################

# Todo: put trades in this summon command:
summon wandering_trader ~ ~ ~ {Offers:{Recipes:[]},Team:"tcc.antivillager",CustomName:'{"translate":"entity.minecraft.witch"}',DeathLootTable:"minecraft:entities/witch",ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f],ActiveEffects:[{Id:14b,Duration:100000,Amplifier:0b,ShowParticles:0b}],Tags:["tcc.witch_trader","tcc.entity","tcc.trader_entity","global.ignore"],Silent:1b,ArmorItems:[{},{id:"minecraft:structure_block",Count:1b,tag:{witch_data:{},CustomModelData:330000}},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{tcc:{storage:{model_items:[{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16777215},CustomModelData:330013}},{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16777215},CustomModelData:330014}}]}},CustomModelData:330015,display:{color:16777215}}}],HandItems:[{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:330013,display:{color:16777215}}}],Attributes:[{Name:"generic.max_health",Base:26d}]}
tp @e[type=wandering_trader,tag=tcc.witch_trader,sort=nearest,limit=1] @s
data remove entity @s ArmorItems[1].tag.trader_data.Pos
data remove entity @s ArmorItems[1].tag.trader_data.Motion
data remove entity @s ArmorItems[1].tag.trader_data.Rotation
data remove entity @s ArmorItems[1].tag.trader_data.HurtTime
data remove entity @s ArmorItems[1].tag.trader_data.ArmorItems
data modify entity @e[type=wandering_trader,tag=tcc.witch_trader,sort=nearest,limit=1] {} merge from entity @s ArmorItems[1].tag.trader_data
execute as @e[type=wandering_trader,tag=tcc.witch_trader,sort=nearest,limit=1] unless data entity @s Offers.Recipes[{}] run function tcc:entity/witch/set_initial_trades
data modify entity @e[type=wandering_trader,tag=tcc.witch_trader,sort=nearest,limit=1] ArmorItems[1].tag.witch_data set from entity @s
particle minecraft:witch ~ ~2.5 ~ 0.1 0.5 0.1 0 100 force
tp ~ -1000 ~
kill @s
