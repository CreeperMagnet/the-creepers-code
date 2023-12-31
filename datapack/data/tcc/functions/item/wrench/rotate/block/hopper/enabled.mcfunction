############################################################
# Rotates a block
############################################################

execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ hopper[facing=north] run setblock ~ ~ ~ hopper[facing=east]
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ hopper[facing=south] run setblock ~ ~ ~ hopper[facing=west]
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ hopper[facing=east] run setblock ~ ~ ~ hopper[facing=south]
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ hopper[facing=west] run setblock ~ ~ ~ hopper[facing=down]
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy if block ~ ~ ~ hopper[facing=down] run setblock ~ ~ ~ hopper[facing=north]