############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ mangrove_stairs[facing=north] run setblock ~ ~ ~ mangrove_stairs[facing=east,half=top]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ mangrove_stairs[facing=east] run setblock ~ ~ ~ mangrove_stairs[facing=south,half=top]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ mangrove_stairs[facing=south] run setblock ~ ~ ~ mangrove_stairs[facing=west,half=top]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ mangrove_stairs[facing=west] run setblock ~ ~ ~ mangrove_stairs[facing=north,half=top]
