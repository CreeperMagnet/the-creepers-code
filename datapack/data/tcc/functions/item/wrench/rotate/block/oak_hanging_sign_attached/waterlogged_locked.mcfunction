############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ oak_hanging_sign[rotation=0] run setblock ~ ~ ~ oak_hanging_sign[attached=true,waterlogged=true,rotation=4]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ oak_hanging_sign[rotation=4] run setblock ~ ~ ~ oak_hanging_sign[attached=true,waterlogged=true,rotation=8]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ oak_hanging_sign[rotation=8] run setblock ~ ~ ~ oak_hanging_sign[attached=true,waterlogged=true,rotation=12]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ oak_hanging_sign[rotation=12] run setblock ~ ~ ~ oak_hanging_sign[attached=true,waterlogged=true,rotation=0]
