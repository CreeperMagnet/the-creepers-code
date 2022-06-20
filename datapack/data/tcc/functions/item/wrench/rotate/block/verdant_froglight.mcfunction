############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ verdant_froglight[axis=y] run setblock ~ ~ ~ verdant_froglight[axis=x]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ verdant_froglight[axis=x] run setblock ~ ~ ~ verdant_froglight[axis=z]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ verdant_froglight[axis=z] run setblock ~ ~ ~ verdant_froglight[axis=y]
