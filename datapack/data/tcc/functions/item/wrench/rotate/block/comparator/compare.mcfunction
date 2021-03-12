############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ comparator[facing=north] run setblock ~ ~ ~ comparator[mode=compare,facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ comparator[facing=south] run setblock ~ ~ ~ comparator[mode=compare,facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ comparator[facing=east] run setblock ~ ~ ~ comparator[mode=compare,facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ comparator[facing=west] run setblock ~ ~ ~ comparator[mode=compare,facing=north]
