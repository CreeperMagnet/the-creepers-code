############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ chipped_anvil[facing=north] run setblock ~ ~ ~ chipped_anvil[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ chipped_anvil[facing=east] run setblock ~ ~ ~ chipped_anvil[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ chipped_anvil[facing=south] run setblock ~ ~ ~ chipped_anvil[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ chipped_anvil[facing=west] run setblock ~ ~ ~ chipped_anvil[facing=north]
