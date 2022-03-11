############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ grindstone[facing=north] run setblock ~ ~ ~ grindstone[face=ceiling,facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ grindstone[facing=south] run setblock ~ ~ ~ grindstone[face=ceiling,facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ grindstone[facing=east] run setblock ~ ~ ~ grindstone[face=ceiling,facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ grindstone[facing=west] run setblock ~ ~ ~ grindstone[face=ceiling,facing=north]
