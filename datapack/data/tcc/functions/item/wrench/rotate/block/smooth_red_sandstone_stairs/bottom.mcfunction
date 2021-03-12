############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ smooth_red_sandstone_stairs[facing=north] run setblock ~ ~ ~ smooth_red_sandstone_stairs[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ smooth_red_sandstone_stairs[facing=east] run setblock ~ ~ ~ smooth_red_sandstone_stairs[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ smooth_red_sandstone_stairs[facing=south] run setblock ~ ~ ~ smooth_red_sandstone_stairs[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ smooth_red_sandstone_stairs[facing=west] run setblock ~ ~ ~ smooth_red_sandstone_stairs[facing=north]
