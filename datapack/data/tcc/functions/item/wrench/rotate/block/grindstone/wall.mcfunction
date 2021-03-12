############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ grindstone[facing=north] run setblock ~ ~ ~ grindstone[face=wall,facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ grindstone[facing=south] run setblock ~ ~ ~ grindstone[face=wall,facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ grindstone[facing=east] run setblock ~ ~ ~ grindstone[face=wall,facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ grindstone[facing=west] run setblock ~ ~ ~ grindstone[face=wall,facing=north]
