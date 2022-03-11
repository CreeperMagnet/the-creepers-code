############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ ender_chest[facing=north] run setblock ~ ~ ~ ender_chest[waterlogged=true,facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ ender_chest[facing=south] run setblock ~ ~ ~ ender_chest[waterlogged=true,facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ ender_chest[facing=east] run setblock ~ ~ ~ ender_chest[waterlogged=true,facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ ender_chest[facing=west] run setblock ~ ~ ~ ender_chest[waterlogged=true,facing=north]
