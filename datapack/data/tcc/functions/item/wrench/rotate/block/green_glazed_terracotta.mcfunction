############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ green_glazed_terracotta[facing=north] run setblock ~ ~ ~ green_glazed_terracotta[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ green_glazed_terracotta[facing=east] run setblock ~ ~ ~ green_glazed_terracotta[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ green_glazed_terracotta[facing=south] run setblock ~ ~ ~ green_glazed_terracotta[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ green_glazed_terracotta[facing=west] run setblock ~ ~ ~ green_glazed_terracotta[facing=north]
