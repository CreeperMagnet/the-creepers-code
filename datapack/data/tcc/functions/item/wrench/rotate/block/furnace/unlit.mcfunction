############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ furnace[facing=north] run setblock ~ ~ ~ furnace[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ furnace[facing=south] run setblock ~ ~ ~ furnace[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ furnace[facing=east] run setblock ~ ~ ~ furnace[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ furnace[facing=west] run setblock ~ ~ ~ furnace[facing=north]