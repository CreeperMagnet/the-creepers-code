############################################################
# Gives an entity enchanter effects
############################################################

execute store result score #temp_0 tcc.dummy run random value 1..4
execute if score #temp_0 tcc.dummy matches 1 run effect give @s strength 20 0
execute if score #temp_0 tcc.dummy matches 1 run data modify entity @s active_effects[{id:"minecraft:strength"}].Ambient set value 1
execute if score #temp_0 tcc.dummy matches 2 run effect give @s speed 20 0
execute if score #temp_0 tcc.dummy matches 2 run data modify entity @s active_effects[{id:"minecraft:speed"}].Ambient set value 1
execute if score #temp_0 tcc.dummy matches 3 run effect give @s resistance 20 0
execute if score #temp_0 tcc.dummy matches 3 run data modify entity @s active_effects[{id:"minecraft:resistance"}].Ambient set value 1
execute if score #temp_0 tcc.dummy matches 4 run effect give @s regeneration 20 0
execute if score #temp_0 tcc.dummy matches 4 run data modify entity @s active_effects[{id:"minecraft:regeneration"}].Ambient set value 1
particle minecraft:enchant ~ ~1 ~ 0.1 1 0.1 1.0 60 force