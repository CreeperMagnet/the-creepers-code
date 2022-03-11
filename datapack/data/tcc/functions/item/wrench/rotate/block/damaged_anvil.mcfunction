############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ damaged_anvil[facing=north] run setblock ~ ~ ~ damaged_anvil[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ damaged_anvil[facing=east] run setblock ~ ~ ~ damaged_anvil[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ damaged_anvil[facing=south] run setblock ~ ~ ~ damaged_anvil[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ damaged_anvil[facing=west] run setblock ~ ~ ~ damaged_anvil[facing=north]
