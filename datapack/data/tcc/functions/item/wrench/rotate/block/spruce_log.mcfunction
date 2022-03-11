############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ spruce_log[axis=y] run setblock ~ ~ ~ spruce_log[axis=x]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ spruce_log[axis=x] run setblock ~ ~ ~ spruce_log[axis=z]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ spruce_log[axis=z] run setblock ~ ~ ~ spruce_log[axis=y]
