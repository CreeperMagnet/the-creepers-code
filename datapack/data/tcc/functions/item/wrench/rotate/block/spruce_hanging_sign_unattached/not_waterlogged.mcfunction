############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ spruce_hanging_sign[rotation=0] run setblock ~ ~ ~ spruce_hanging_sign[rotation=4]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ spruce_hanging_sign[rotation=4] run setblock ~ ~ ~ spruce_hanging_sign[rotation=8]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ spruce_hanging_sign[rotation=8] run setblock ~ ~ ~ spruce_hanging_sign[rotation=12]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ spruce_hanging_sign[rotation=12] run setblock ~ ~ ~ spruce_hanging_sign[rotation=0]
