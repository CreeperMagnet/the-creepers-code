############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ basalt[axis=y] run setblock ~ ~ ~ basalt[axis=x]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ basalt[axis=x] run setblock ~ ~ ~ basalt[axis=z]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ basalt[axis=z] run setblock ~ ~ ~ basalt[axis=y]
