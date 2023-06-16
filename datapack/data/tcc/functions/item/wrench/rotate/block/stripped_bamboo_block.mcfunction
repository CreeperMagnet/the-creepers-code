############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ stripped_bamboo_block[axis=y] run setblock ~ ~ ~ stripped_bamboo_block[axis=x]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ stripped_bamboo_block[axis=x] run setblock ~ ~ ~ stripped_bamboo_block[axis=z]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ stripped_bamboo_block[axis=z] run setblock ~ ~ ~ stripped_bamboo_block[axis=y]
