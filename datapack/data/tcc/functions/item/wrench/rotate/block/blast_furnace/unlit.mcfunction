############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ blast_furnace[facing=north] run setblock ~ ~ ~ blast_furnace[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ blast_furnace[facing=south] run setblock ~ ~ ~ blast_furnace[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ blast_furnace[facing=east] run setblock ~ ~ ~ blast_furnace[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ blast_furnace[facing=west] run setblock ~ ~ ~ blast_furnace[facing=north]