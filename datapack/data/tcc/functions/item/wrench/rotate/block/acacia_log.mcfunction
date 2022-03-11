############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ acacia_log[axis=y] run setblock ~ ~ ~ acacia_log[axis=x]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ acacia_log[axis=x] run setblock ~ ~ ~ acacia_log[axis=z]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ acacia_log[axis=z] run setblock ~ ~ ~ acacia_log[axis=y]
