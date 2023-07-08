############################################################
# Gives an entity enchanter effects
############################################################

execute store result score #temp_0 tcc.dummy run loot spawn 0 0 0 loot tcc:technical/roll/min_1_max_4
execute if score #temp_0 tcc.dummy matches 1 run effect give @s strength 20 0
execute if score #temp_0 tcc.dummy matches 1 run data modify entity @s ActiveEffects[{Id:5}].Ambient set value 1
execute if score #temp_0 tcc.dummy matches 2 run effect give @s speed 20 0
execute if score #temp_0 tcc.dummy matches 2 run data modify entity @s ActiveEffects[{Id:1}].Ambient set value 1
execute if score #temp_0 tcc.dummy matches 3 run effect give @s resistance 20 0
execute if score #temp_0 tcc.dummy matches 3 run data modify entity @s ActiveEffects[{Id:11}].Ambient set value 1
execute if score #temp_0 tcc.dummy matches 4 run effect give @s regeneration 20 0
execute if score #temp_0 tcc.dummy matches 4 run data modify entity @s ActiveEffects[{Id:10}].Ambient set value 1
particle minecraft:enchant ~ ~1 ~ 0.1 1 0.1 1.0 60 force