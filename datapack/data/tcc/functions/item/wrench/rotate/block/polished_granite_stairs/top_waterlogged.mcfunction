############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ polished_granite_stairs[facing=north] run setblock ~ ~ ~ polished_granite_stairs[facing=east,half=top,waterlogged=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ polished_granite_stairs[facing=east] run setblock ~ ~ ~ polished_granite_stairs[facing=south,half=top,waterlogged=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ polished_granite_stairs[facing=south] run setblock ~ ~ ~ polished_granite_stairs[facing=west,half=top,waterlogged=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ polished_granite_stairs[facing=west] run setblock ~ ~ ~ polished_granite_stairs[facing=north,half=top,waterlogged=true]
