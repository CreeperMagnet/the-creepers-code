############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ warped_wall_hanging_sign[facing=north] run setblock ~ ~ ~ warped_wall_hanging_sign[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ warped_wall_hanging_sign[facing=east] run setblock ~ ~ ~ warped_wall_hanging_sign[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ warped_wall_hanging_sign[facing=south] run setblock ~ ~ ~ warped_wall_hanging_sign[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ warped_wall_hanging_sign[facing=west] run setblock ~ ~ ~ warped_wall_hanging_sign[facing=north]