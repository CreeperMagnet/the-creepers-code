############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ jungle_wood[axis=y] run setblock ~ ~ ~ jungle_wood[axis=x]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ jungle_wood[axis=x] run setblock ~ ~ ~ jungle_wood[axis=z]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ jungle_wood[axis=z] run setblock ~ ~ ~ jungle_wood[axis=y]
