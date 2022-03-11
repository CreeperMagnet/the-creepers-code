############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ brick_stairs[facing=north] run setblock ~ ~ ~ brick_stairs[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ brick_stairs[facing=east] run setblock ~ ~ ~ brick_stairs[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ brick_stairs[facing=south] run setblock ~ ~ ~ brick_stairs[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ brick_stairs[facing=west] run setblock ~ ~ ~ brick_stairs[facing=north]
