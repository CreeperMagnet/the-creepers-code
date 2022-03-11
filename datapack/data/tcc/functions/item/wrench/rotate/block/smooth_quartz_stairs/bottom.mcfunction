############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ smooth_quartz_stairs[facing=north] run setblock ~ ~ ~ smooth_quartz_stairs[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ smooth_quartz_stairs[facing=east] run setblock ~ ~ ~ smooth_quartz_stairs[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ smooth_quartz_stairs[facing=south] run setblock ~ ~ ~ smooth_quartz_stairs[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ smooth_quartz_stairs[facing=west] run setblock ~ ~ ~ smooth_quartz_stairs[facing=north]
