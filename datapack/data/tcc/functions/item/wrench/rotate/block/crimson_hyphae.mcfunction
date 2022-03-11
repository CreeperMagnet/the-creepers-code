############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ crimson_hyphae[axis=y] run setblock ~ ~ ~ crimson_hyphae[axis=x]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ crimson_hyphae[axis=x] run setblock ~ ~ ~ crimson_hyphae[axis=z]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ crimson_hyphae[axis=z] run setblock ~ ~ ~ crimson_hyphae[axis=y]
