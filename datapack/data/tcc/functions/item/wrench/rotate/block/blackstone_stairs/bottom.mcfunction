############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ blackstone_stairs[facing=north] run setblock ~ ~ ~ blackstone_stairs[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ blackstone_stairs[facing=east] run setblock ~ ~ ~ blackstone_stairs[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ blackstone_stairs[facing=south] run setblock ~ ~ ~ blackstone_stairs[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ blackstone_stairs[facing=west] run setblock ~ ~ ~ blackstone_stairs[facing=north]
