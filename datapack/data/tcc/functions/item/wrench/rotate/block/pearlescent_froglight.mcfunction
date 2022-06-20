############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ pearlescent_froglight[axis=y] run setblock ~ ~ ~ pearlescent_froglight[axis=x]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ pearlescent_froglight[axis=x] run setblock ~ ~ ~ pearlescent_froglight[axis=z]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ pearlescent_froglight[axis=z] run setblock ~ ~ ~ pearlescent_froglight[axis=y]
