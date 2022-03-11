############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ blast_furnace[facing=north] run setblock ~ ~ ~ blast_furnace[facing=east,lit=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ blast_furnace[facing=south] run setblock ~ ~ ~ blast_furnace[facing=west,lit=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ blast_furnace[facing=east] run setblock ~ ~ ~ blast_furnace[facing=south,lit=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ blast_furnace[facing=west] run setblock ~ ~ ~ blast_furnace[facing=north,lit=true]