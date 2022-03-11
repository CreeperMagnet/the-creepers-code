############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ comparator[facing=north] run setblock ~ ~ ~ comparator[mode=subtract,facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ comparator[facing=south] run setblock ~ ~ ~ comparator[mode=subtract,facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ comparator[facing=east] run setblock ~ ~ ~ comparator[mode=subtract,facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ comparator[facing=west] run setblock ~ ~ ~ comparator[mode=subtract,facing=north]
