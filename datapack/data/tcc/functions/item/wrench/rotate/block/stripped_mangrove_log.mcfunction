############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ stripped_mangrove_log[axis=y] run setblock ~ ~ ~ stripped_mangrove_log[axis=x]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ stripped_mangrove_log[axis=x] run setblock ~ ~ ~ stripped_mangrove_log[axis=z]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ stripped_mangrove_log[axis=z] run setblock ~ ~ ~ stripped_mangrove_log[axis=y]
