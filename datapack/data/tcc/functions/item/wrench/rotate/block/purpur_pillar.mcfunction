############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ purpur_pillar[axis=y] run setblock ~ ~ ~ purpur_pillar[axis=x]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ purpur_pillar[axis=x] run setblock ~ ~ ~ purpur_pillar[axis=z]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ purpur_pillar[axis=z] run setblock ~ ~ ~ purpur_pillar[axis=y]
