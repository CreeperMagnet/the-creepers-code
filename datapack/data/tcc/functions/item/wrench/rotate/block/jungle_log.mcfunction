############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ jungle_log[axis=y] run setblock ~ ~ ~ jungle_log[axis=x]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ jungle_log[axis=x] run setblock ~ ~ ~ jungle_log[axis=z]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ jungle_log[axis=z] run setblock ~ ~ ~ jungle_log[axis=y]
