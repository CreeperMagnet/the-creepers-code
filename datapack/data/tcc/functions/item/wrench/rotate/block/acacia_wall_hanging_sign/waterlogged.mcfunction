############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ acacia_wall_hanging_sign[facing=north] run setblock ~ ~ ~ acacia_wall_hanging_sign[waterlogged=true,facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ acacia_wall_hanging_sign[facing=east] run setblock ~ ~ ~ acacia_wall_hanging_sign[waterlogged=true,facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ acacia_wall_hanging_sign[facing=south] run setblock ~ ~ ~ acacia_wall_hanging_sign[waterlogged=true,facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ acacia_wall_hanging_sign[facing=west] run setblock ~ ~ ~ acacia_wall_hanging_sign[waterlogged=true,facing=north]
