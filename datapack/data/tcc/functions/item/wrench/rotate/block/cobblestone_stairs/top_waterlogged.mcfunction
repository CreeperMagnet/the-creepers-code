############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ cobblestone_stairs[facing=north] run setblock ~ ~ ~ cobblestone_stairs[facing=east,half=top,waterlogged=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ cobblestone_stairs[facing=east] run setblock ~ ~ ~ cobblestone_stairs[facing=south,half=top,waterlogged=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ cobblestone_stairs[facing=south] run setblock ~ ~ ~ cobblestone_stairs[facing=west,half=top,waterlogged=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ cobblestone_stairs[facing=west] run setblock ~ ~ ~ cobblestone_stairs[facing=north,half=top,waterlogged=true]
