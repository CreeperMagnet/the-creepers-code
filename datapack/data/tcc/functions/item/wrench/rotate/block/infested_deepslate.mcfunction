############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ infested_deepslate[axis=y] run setblock ~ ~ ~ infested_deepslate[axis=x]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ infested_deepslate[axis=x] run setblock ~ ~ ~ infested_deepslate[axis=z]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ infested_deepslate[axis=z] run setblock ~ ~ ~ infested_deepslate[axis=y]
