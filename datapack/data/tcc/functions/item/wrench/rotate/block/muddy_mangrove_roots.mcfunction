############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ muddy_mangrove_roots[axis=y] run setblock ~ ~ ~ muddy_mangrove_roots[axis=x]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ muddy_mangrove_roots[axis=x] run setblock ~ ~ ~ muddy_mangrove_roots[axis=z]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ muddy_mangrove_roots[axis=z] run setblock ~ ~ ~ muddy_mangrove_roots[axis=y]
