# Increments custom model data

execute store result score @s tcc.dummy run data get entity @s item.components."minecraft:custom_model_data"
scoreboard players add @s tcc.dummy 1
execute store result entity @s item.components."minecraft:custom_model_data" int 1 run scoreboard players get @s tcc.dummy