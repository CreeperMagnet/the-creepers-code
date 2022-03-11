############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ chain[axis=y] run setblock ~ ~ ~ chain[axis=x,waterlogged=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ chain[axis=x] run setblock ~ ~ ~ chain[axis=z,waterlogged=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ chain[axis=z] run setblock ~ ~ ~ chain[axis=y,waterlogged=true]
