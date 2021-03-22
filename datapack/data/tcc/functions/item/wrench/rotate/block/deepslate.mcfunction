############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ deepslate[axis=y] run setblock ~ ~ ~ deepslate[axis=x]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ deepslate[axis=x] run setblock ~ ~ ~ deepslate[axis=z]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ deepslate[axis=z] run setblock ~ ~ ~ deepslate[axis=y]
