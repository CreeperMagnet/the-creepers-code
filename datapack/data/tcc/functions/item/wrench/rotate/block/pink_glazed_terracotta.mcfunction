############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ pink_glazed_terracotta[facing=north] run setblock ~ ~ ~ pink_glazed_terracotta[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ pink_glazed_terracotta[facing=east] run setblock ~ ~ ~ pink_glazed_terracotta[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ pink_glazed_terracotta[facing=south] run setblock ~ ~ ~ pink_glazed_terracotta[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ pink_glazed_terracotta[facing=west] run setblock ~ ~ ~ pink_glazed_terracotta[facing=north]
