############################################################
# Turns the witch into a wandering trader, and keeps its data from when the witch was a trader before
############################################################

data remove storage tcc:storage root.temp
summon wandering_trader ~ ~ ~ {Offers:{Recipes:[]},Team:"smithed.prevent_aggression",CustomName:'{"translate":"entity.minecraft.witch"}',DeathLootTable:"minecraft:entities/witch",ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f],ActiveEffects:[{Id:14,Duration:100000,Amplifier:0b,ShowParticles:0b}],Tags:["tcc.witch_trader","tcc.illager","tcc.tick","tcc.second_clock","tcc.ten_second_clock","tcc.trader_entity","smithed.entity","tcc.witch_trader.newly_spawned"],Silent:1b,ArmorItems:[{},{id:"minecraft:structure_block",Count:1b,tag:{witch_data:{},CustomModelData:330000}},{},{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330066,tcc:{custom_model_data:{head:330066,idle:330068,moving:330070}}}}],HandItems:[{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330068}}],Attributes:[{Name:"generic.max_health",Base:26d}]}
data remove entity @s ArmorItems[1].tag.trader_data.Pos
data remove entity @s ArmorItems[1].tag.trader_data.Motion
data remove entity @s ArmorItems[1].tag.trader_data.Rotation
data remove entity @s ArmorItems[1].tag.trader_data.HurtTime
data remove entity @s ArmorItems[1].tag.trader_data.ArmorItems
execute if data entity @s CustomName run data modify entity @s ArmorItems[1].tag.trader_data.CustomName set from entity @s CustomName
data modify storage tcc:storage root.temp.trader_data set from entity @s ArmorItems[1].tag.trader_data
data modify storage tcc:storage root.temp.witch_data set from entity @s
execute as @e[type=wandering_trader,tag=tcc.witch_trader.newly_spawned,limit=1] run function tcc:entity/witch/switch_to_trader/as_trader
particle minecraft:witch ~ ~2.5 ~ 0.1 0.5 0.1 0 100 force
tp ~ -1000 ~
