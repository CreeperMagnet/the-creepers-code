############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ furnace[facing=north] run setblock ~ ~ ~ furnace[facing=east,lit=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ furnace[facing=south] run setblock ~ ~ ~ furnace[facing=west,lit=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ furnace[facing=east] run setblock ~ ~ ~ furnace[facing=south,lit=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ furnace[facing=west] run setblock ~ ~ ~ furnace[facing=north,lit=true]