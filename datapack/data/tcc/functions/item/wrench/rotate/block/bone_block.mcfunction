############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ bone_block[axis=y] run setblock ~ ~ ~ bone_block[axis=x]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ bone_block[axis=x] run setblock ~ ~ ~ bone_block[axis=z]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ bone_block[axis=z] run setblock ~ ~ ~ bone_block[axis=y]
