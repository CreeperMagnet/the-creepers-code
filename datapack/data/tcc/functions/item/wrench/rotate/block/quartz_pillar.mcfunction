############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ quartz_pillar[axis=y] run setblock ~ ~ ~ quartz_pillar[axis=x]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ quartz_pillar[axis=x] run setblock ~ ~ ~ quartz_pillar[axis=z]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ quartz_pillar[axis=z] run setblock ~ ~ ~ quartz_pillar[axis=y]
