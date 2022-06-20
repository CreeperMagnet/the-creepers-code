############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ mangrove_wood[axis=y] run setblock ~ ~ ~ mangrove_wood[axis=x]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ mangrove_wood[axis=x] run setblock ~ ~ ~ mangrove_wood[axis=z]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ mangrove_wood[axis=z] run setblock ~ ~ ~ mangrove_wood[axis=y]
