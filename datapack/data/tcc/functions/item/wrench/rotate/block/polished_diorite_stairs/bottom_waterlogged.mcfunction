############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ polished_diorite_stairs[facing=north] run setblock ~ ~ ~ polished_diorite_stairs[facing=east,waterlogged=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ polished_diorite_stairs[facing=east] run setblock ~ ~ ~ polished_diorite_stairs[facing=south,waterlogged=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ polished_diorite_stairs[facing=south] run setblock ~ ~ ~ polished_diorite_stairs[facing=west,waterlogged=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ polished_diorite_stairs[facing=west] run setblock ~ ~ ~ polished_diorite_stairs[facing=north,waterlogged=true]
