############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ chain[axis=y] run setblock ~ ~ ~ chain[axis=x]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ chain[axis=x] run setblock ~ ~ ~ chain[axis=z]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ chain[axis=z] run setblock ~ ~ ~ chain[axis=y]
