############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ anvil[facing=north] run setblock ~ ~ ~ anvil[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ anvil[facing=east] run setblock ~ ~ ~ anvil[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ anvil[facing=south] run setblock ~ ~ ~ anvil[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ anvil[facing=west] run setblock ~ ~ ~ anvil[facing=north]
