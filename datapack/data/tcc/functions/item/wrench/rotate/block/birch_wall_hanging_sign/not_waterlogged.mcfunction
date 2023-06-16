############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ birch_wall_hanging_sign[facing=north] run setblock ~ ~ ~ birch_wall_hanging_sign[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ birch_wall_hanging_sign[facing=east] run setblock ~ ~ ~ birch_wall_hanging_sign[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ birch_wall_hanging_sign[facing=south] run setblock ~ ~ ~ birch_wall_hanging_sign[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ birch_wall_hanging_sign[facing=west] run setblock ~ ~ ~ birch_wall_hanging_sign[facing=north]