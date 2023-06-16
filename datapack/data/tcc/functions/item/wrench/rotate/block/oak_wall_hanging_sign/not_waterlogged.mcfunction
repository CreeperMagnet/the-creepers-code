############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ oak_wall_hanging_sign[facing=north] run setblock ~ ~ ~ oak_wall_hanging_sign[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ oak_wall_hanging_sign[facing=east] run setblock ~ ~ ~ oak_wall_hanging_sign[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ oak_wall_hanging_sign[facing=south] run setblock ~ ~ ~ oak_wall_hanging_sign[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ oak_wall_hanging_sign[facing=west] run setblock ~ ~ ~ oak_wall_hanging_sign[facing=north]