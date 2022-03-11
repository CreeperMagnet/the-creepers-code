############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ stripped_warped_hyphae[axis=y] run setblock ~ ~ ~ stripped_warped_hyphae[axis=x]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ stripped_warped_hyphae[axis=x] run setblock ~ ~ ~ stripped_warped_hyphae[axis=z]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ stripped_warped_hyphae[axis=z] run setblock ~ ~ ~ stripped_warped_hyphae[axis=y]
