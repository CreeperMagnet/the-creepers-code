# Increments the comparator data on a soul seer entity

execute store result score @s tcc.dummy run data get entity @s item.components."minecraft:custom_data".comparator
scoreboard players add @s tcc.dummy 1
execute store result entity @s item.components."minecraft:custom_data".comparator int 1 run scoreboard players get @s tcc.dummy
execute if data entity @s item.components."minecraft:custom_data"{comparator:0} run data modify entity @s item.components."minecraft:custom_data".comparator set value 1
