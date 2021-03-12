############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ dark_oak_stairs[facing=north] run setblock ~ ~ ~ dark_oak_stairs[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ dark_oak_stairs[facing=east] run setblock ~ ~ ~ dark_oak_stairs[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ dark_oak_stairs[facing=south] run setblock ~ ~ ~ dark_oak_stairs[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ dark_oak_stairs[facing=west] run setblock ~ ~ ~ dark_oak_stairs[facing=north]
