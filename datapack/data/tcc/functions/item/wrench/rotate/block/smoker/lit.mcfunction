############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ smoker[facing=north] run setblock ~ ~ ~ smoker[facing=east,lit=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ smoker[facing=south] run setblock ~ ~ ~ smoker[facing=west,lit=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ smoker[facing=east] run setblock ~ ~ ~ smoker[facing=south,lit=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ smoker[facing=west] run setblock ~ ~ ~ smoker[facing=north,lit=true]