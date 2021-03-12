############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ beehive[facing=north] run setblock ~ ~ ~ beehive[honey_level=4,facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ beehive[facing=south] run setblock ~ ~ ~ beehive[honey_level=4,facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ beehive[facing=east] run setblock ~ ~ ~ beehive[honey_level=4,facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ beehive[facing=west] run setblock ~ ~ ~ beehive[honey_level=4,facing=north]
