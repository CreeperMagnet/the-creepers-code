############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ mangrove_log[axis=y] run setblock ~ ~ ~ mangrove_log[axis=x]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ mangrove_log[axis=x] run setblock ~ ~ ~ mangrove_log[axis=z]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ mangrove_log[axis=z] run setblock ~ ~ ~ mangrove_log[axis=y]
