############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ mud_brick_stairs[facing=north] run setblock ~ ~ ~ mud_brick_stairs[facing=east,waterlogged=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ mud_brick_stairs[facing=east] run setblock ~ ~ ~ mud_brick_stairs[facing=south,waterlogged=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ mud_brick_stairs[facing=south] run setblock ~ ~ ~ mud_brick_stairs[facing=west,waterlogged=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ mud_brick_stairs[facing=west] run setblock ~ ~ ~ mud_brick_stairs[facing=north,waterlogged=true]
