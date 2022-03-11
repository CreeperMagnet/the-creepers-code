############################################################
# Calculates the damage a player has to have
############################################################

execute store result score @s tcc.dummy run attribute @s minecraft:generic.max_health get 10
execute store result score @s tcc.dummy2 run data get entity @s Health 10
execute if score #damage tcc.dummy >= @s tcc.dummy2 run function tcc:entity/player/damage/death
scoreboard players operation @s tcc.dummy -= @s tcc.dummy2
scoreboard players operation @s tcc.dummy += #damage tcc.dummy
