# Starts the recipe process of a brewing recipe

scoreboard players set @s tcc.dummy2 400
execute store result score @s tcc.dummy run data get block ~ ~ ~ Fuel
execute store result block ~ ~ ~ Fuel int 1 run scoreboard players remove @s tcc.dummy 1
