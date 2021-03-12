############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ diorite_stairs[facing=north] run setblock ~ ~ ~ diorite_stairs[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ diorite_stairs[facing=east] run setblock ~ ~ ~ diorite_stairs[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ diorite_stairs[facing=south] run setblock ~ ~ ~ diorite_stairs[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ diorite_stairs[facing=west] run setblock ~ ~ ~ diorite_stairs[facing=north]
