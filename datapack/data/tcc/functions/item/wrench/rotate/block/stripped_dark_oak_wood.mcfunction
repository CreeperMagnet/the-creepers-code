############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ stripped_dark_oak_wood[axis=y] run setblock ~ ~ ~ stripped_dark_oak_wood[axis=x]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ stripped_dark_oak_wood[axis=x] run setblock ~ ~ ~ stripped_dark_oak_wood[axis=z]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ stripped_dark_oak_wood[axis=z] run setblock ~ ~ ~ stripped_dark_oak_wood[axis=y]
