############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ hay_block[axis=y] run setblock ~ ~ ~ hay_block[axis=x]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ hay_block[axis=x] run setblock ~ ~ ~ hay_block[axis=z]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ hay_block[axis=z] run setblock ~ ~ ~ hay_block[axis=y]
