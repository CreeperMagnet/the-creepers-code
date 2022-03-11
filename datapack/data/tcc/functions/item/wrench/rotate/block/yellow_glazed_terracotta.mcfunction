############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ yellow_glazed_terracotta[facing=north] run setblock ~ ~ ~ yellow_glazed_terracotta[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ yellow_glazed_terracotta[facing=east] run setblock ~ ~ ~ yellow_glazed_terracotta[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ yellow_glazed_terracotta[facing=south] run setblock ~ ~ ~ yellow_glazed_terracotta[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ yellow_glazed_terracotta[facing=west] run setblock ~ ~ ~ yellow_glazed_terracotta[facing=north]
