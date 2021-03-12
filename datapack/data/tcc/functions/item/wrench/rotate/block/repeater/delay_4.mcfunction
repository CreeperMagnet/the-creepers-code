############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ repeater[facing=north] run setblock ~ ~ ~ repeater[delay=4,facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ repeater[facing=south] run setblock ~ ~ ~ repeater[delay=4,facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ repeater[facing=east] run setblock ~ ~ ~ repeater[delay=4,facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ repeater[facing=west] run setblock ~ ~ ~ repeater[delay=4,facing=north]
