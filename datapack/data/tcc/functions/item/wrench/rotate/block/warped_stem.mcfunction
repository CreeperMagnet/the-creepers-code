############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ warped_stem[axis=y] run setblock ~ ~ ~ warped_stem[axis=x]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ warped_stem[axis=x] run setblock ~ ~ ~ warped_stem[axis=z]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ warped_stem[axis=z] run setblock ~ ~ ~ warped_stem[axis=y]
