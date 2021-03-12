############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ trapped_chest[facing=north] run setblock ~ ~ ~ trapped_chest[waterlogged=true,facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ trapped_chest[facing=south] run setblock ~ ~ ~ trapped_chest[waterlogged=true,facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ trapped_chest[facing=east] run setblock ~ ~ ~ trapped_chest[waterlogged=true,facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ trapped_chest[facing=west] run setblock ~ ~ ~ trapped_chest[waterlogged=true,facing=north]
