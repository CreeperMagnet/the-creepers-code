############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ hopper[facing=north] run setblock ~ ~ ~ hopper[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ hopper[facing=south] run setblock ~ ~ ~ hopper[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ hopper[facing=east] run setblock ~ ~ ~ hopper[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ hopper[facing=west] run setblock ~ ~ ~ hopper[facing=down]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ hopper[facing=down] run setblock ~ ~ ~ hopper[facing=north]