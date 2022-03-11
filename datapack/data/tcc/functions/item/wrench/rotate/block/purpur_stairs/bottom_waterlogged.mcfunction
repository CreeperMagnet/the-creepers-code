############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ purpur_stairs[facing=north] run setblock ~ ~ ~ purpur_stairs[facing=east,waterlogged=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ purpur_stairs[facing=east] run setblock ~ ~ ~ purpur_stairs[facing=south,waterlogged=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ purpur_stairs[facing=south] run setblock ~ ~ ~ purpur_stairs[facing=west,waterlogged=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ purpur_stairs[facing=west] run setblock ~ ~ ~ purpur_stairs[facing=north,waterlogged=true]
