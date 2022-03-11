############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ dark_oak_log[axis=y] run setblock ~ ~ ~ dark_oak_log[axis=x]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ dark_oak_log[axis=x] run setblock ~ ~ ~ dark_oak_log[axis=z]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ dark_oak_log[axis=z] run setblock ~ ~ ~ dark_oak_log[axis=y]
