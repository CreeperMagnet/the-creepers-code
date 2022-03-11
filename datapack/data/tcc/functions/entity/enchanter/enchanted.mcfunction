############################################################
# Gives an entity enchanter effects
############################################################

execute store result score #temp_0 tcc.dummy run loot spawn 0 0 0 loot tcc:technical/roll/min_1_max_3
execute if score #temp_0 tcc.dummy matches 1 run effect give @s strength 10 1
execute if score #temp_0 tcc.dummy matches 1 run data modify entity @s ActiveEffects[{Id:5b}].Ambient set value 1b
execute if score #temp_0 tcc.dummy matches 2 run effect give @s speed 10 1
execute if score #temp_0 tcc.dummy matches 2 run data modify entity @s ActiveEffects[{Id:1b}].Ambient set value 1b
execute if score #temp_0 tcc.dummy matches 3 run effect give @s resistance 10 1
execute if score #temp_0 tcc.dummy matches 3 run data modify entity @s ActiveEffects[{Id:11b}].Ambient set value 1b
particle minecraft:enchant ~ ~1 ~ 0.1 1 0.1 1.0 60 force