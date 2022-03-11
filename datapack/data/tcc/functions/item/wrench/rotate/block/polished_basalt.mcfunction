############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ polished_basalt[axis=y] run setblock ~ ~ ~ polished_basalt[axis=x]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ polished_basalt[axis=x] run setblock ~ ~ ~ polished_basalt[axis=z]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ polished_basalt[axis=z] run setblock ~ ~ ~ polished_basalt[axis=y]
