############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ stripped_oak_log[axis=y] run setblock ~ ~ ~ stripped_oak_log[axis=x]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ stripped_oak_log[axis=x] run setblock ~ ~ ~ stripped_oak_log[axis=z]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ stripped_oak_log[axis=z] run setblock ~ ~ ~ stripped_oak_log[axis=y]
