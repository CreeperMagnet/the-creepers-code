############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ stonecutter[facing=north] run setblock ~ ~ ~ stonecutter[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ stonecutter[facing=east] run setblock ~ ~ ~ stonecutter[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ stonecutter[facing=south] run setblock ~ ~ ~ stonecutter[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ stonecutter[facing=west] run setblock ~ ~ ~ stonecutter[facing=north]
