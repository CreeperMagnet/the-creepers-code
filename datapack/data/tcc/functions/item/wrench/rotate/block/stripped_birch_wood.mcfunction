############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ stripped_birch_wood[axis=y] run setblock ~ ~ ~ stripped_birch_wood[axis=x]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ stripped_birch_wood[axis=x] run setblock ~ ~ ~ stripped_birch_wood[axis=z]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ stripped_birch_wood[axis=z] run setblock ~ ~ ~ stripped_birch_wood[axis=y]
