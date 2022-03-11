############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ chest[facing=north] run setblock ~ ~ ~ chest[waterlogged=true,facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ chest[facing=south] run setblock ~ ~ ~ chest[waterlogged=true,facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ chest[facing=east] run setblock ~ ~ ~ chest[waterlogged=true,facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ chest[facing=west] run setblock ~ ~ ~ chest[waterlogged=true,facing=north]
