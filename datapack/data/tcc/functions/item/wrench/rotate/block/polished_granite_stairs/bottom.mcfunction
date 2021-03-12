############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ polished_granite_stairs[facing=north] run setblock ~ ~ ~ polished_granite_stairs[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ polished_granite_stairs[facing=east] run setblock ~ ~ ~ polished_granite_stairs[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ polished_granite_stairs[facing=south] run setblock ~ ~ ~ polished_granite_stairs[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ polished_granite_stairs[facing=west] run setblock ~ ~ ~ polished_granite_stairs[facing=north]
