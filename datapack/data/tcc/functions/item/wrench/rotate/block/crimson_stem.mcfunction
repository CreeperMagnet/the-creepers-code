############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ crimson_stem[axis=y] run setblock ~ ~ ~ crimson_stem[axis=x]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ crimson_stem[axis=x] run setblock ~ ~ ~ crimson_stem[axis=z]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ crimson_stem[axis=z] run setblock ~ ~ ~ crimson_stem[axis=y]
