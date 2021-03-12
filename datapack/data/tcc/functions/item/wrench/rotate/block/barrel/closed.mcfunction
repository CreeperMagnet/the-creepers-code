############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ barrel[facing=north] run setblock ~ ~ ~ barrel[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ barrel[facing=south] run setblock ~ ~ ~ barrel[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ barrel[facing=east] run setblock ~ ~ ~ barrel[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ barrel[facing=west] run setblock ~ ~ ~ barrel[facing=up]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ barrel[facing=up] run setblock ~ ~ ~ barrel[facing=down]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ barrel[facing=down] run setblock ~ ~ ~ barrel[facing=north]
