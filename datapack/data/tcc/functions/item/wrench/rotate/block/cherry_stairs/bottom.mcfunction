############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ cherry_stairs[facing=north] run setblock ~ ~ ~ cherry_stairs[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ cherry_stairs[facing=east] run setblock ~ ~ ~ cherry_stairs[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ cherry_stairs[facing=south] run setblock ~ ~ ~ cherry_stairs[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ cherry_stairs[facing=west] run setblock ~ ~ ~ cherry_stairs[facing=north]
