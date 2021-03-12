############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ granite_stairs[facing=north] run setblock ~ ~ ~ granite_stairs[facing=east,waterlogged=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ granite_stairs[facing=east] run setblock ~ ~ ~ granite_stairs[facing=south,waterlogged=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ granite_stairs[facing=south] run setblock ~ ~ ~ granite_stairs[facing=west,waterlogged=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ granite_stairs[facing=west] run setblock ~ ~ ~ granite_stairs[facing=north,waterlogged=true]
