############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ birch_stairs[facing=north] run setblock ~ ~ ~ birch_stairs[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ birch_stairs[facing=east] run setblock ~ ~ ~ birch_stairs[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ birch_stairs[facing=south] run setblock ~ ~ ~ birch_stairs[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ birch_stairs[facing=west] run setblock ~ ~ ~ birch_stairs[facing=north]
