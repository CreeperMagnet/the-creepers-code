############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ cut_copper_stairs[facing=north] run setblock ~ ~ ~ cut_copper_stairs[facing=east,half=top,waterlogged=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ cut_copper_stairs[facing=east] run setblock ~ ~ ~ cut_copper_stairs[facing=south,half=top,waterlogged=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ cut_copper_stairs[facing=south] run setblock ~ ~ ~ cut_copper_stairs[facing=west,half=top,waterlogged=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ cut_copper_stairs[facing=west] run setblock ~ ~ ~ cut_copper_stairs[facing=north,half=top,waterlogged=true]
