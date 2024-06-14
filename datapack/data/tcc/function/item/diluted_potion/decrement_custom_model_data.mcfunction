# Decrements custom model data on root.item

scoreboard players reset @s tcc.dummy
execute store result score @s tcc.dummy run data get storage tcc:temp root.item.components."minecraft:custom_model_data"
scoreboard players remove @s tcc.dummy 1
execute store result storage tcc:temp root.item.components."minecraft:custom_model_data" int 1 run scoreboard players get @s tcc.dummy
