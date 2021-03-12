############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ stripped_crimson_hyphae[axis=y] run setblock ~ ~ ~ stripped_crimson_hyphae[axis=x]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ stripped_crimson_hyphae[axis=x] run setblock ~ ~ ~ stripped_crimson_hyphae[axis=z]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ stripped_crimson_hyphae[axis=z] run setblock ~ ~ ~ stripped_crimson_hyphae[axis=y]
