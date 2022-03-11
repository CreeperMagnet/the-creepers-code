############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ oak_log[axis=y] run setblock ~ ~ ~ oak_log[axis=x]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ oak_log[axis=x] run setblock ~ ~ ~ oak_log[axis=z]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ oak_log[axis=z] run setblock ~ ~ ~ oak_log[axis=y]
