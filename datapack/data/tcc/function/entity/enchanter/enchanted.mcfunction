# Gives an entity enchanter effects

execute store result score #temp_0 tcc.dummy run random value 1..4
execute if score #temp_0 tcc.dummy matches 1 run effect give @s minecraft:strength 20 0
execute if score #temp_0 tcc.dummy matches 1 run data modify entity @s active_effects[{id:"minecraft:strength"}].ambient set value 1b
execute if score #temp_0 tcc.dummy matches 2 run effect give @s minecraft:speed 20 0
execute if score #temp_0 tcc.dummy matches 2 run data modify entity @s active_effects[{id:"minecraft:speed"}].ambient set value 1b
execute if score #temp_0 tcc.dummy matches 3 run effect give @s minecraft:resistance 20 0
execute if score #temp_0 tcc.dummy matches 3 run data modify entity @s active_effects[{id:"minecraft:resistance"}].ambient set value 1b
execute if score #temp_0 tcc.dummy matches 4 run effect give @s minecraft:regeneration 20 0
execute if score #temp_0 tcc.dummy matches 4 run data modify entity @s active_effects[{id:"minecraft:regeneration"}].ambient set value 1b
particle minecraft:enchant ~ ~1 ~ 0.1 1 0.1 1.0 60 force