############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ spruce_wood[axis=y] run setblock ~ ~ ~ spruce_wood[axis=x]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ spruce_wood[axis=x] run setblock ~ ~ ~ spruce_wood[axis=z]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ spruce_wood[axis=z] run setblock ~ ~ ~ spruce_wood[axis=y]
