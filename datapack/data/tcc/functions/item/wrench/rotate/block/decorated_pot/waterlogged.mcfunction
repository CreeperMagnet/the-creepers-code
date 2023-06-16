############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ decorated_pot[facing=north] run setblock ~ ~ ~ decorated_pot[waterlogged=true,facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ decorated_pot[facing=south] run setblock ~ ~ ~ decorated_pot[waterlogged=true,facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ decorated_pot[facing=east] run setblock ~ ~ ~ decorated_pot[waterlogged=true,facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ decorated_pot[facing=west] run setblock ~ ~ ~ decorated_pot[waterlogged=true,facing=north]
