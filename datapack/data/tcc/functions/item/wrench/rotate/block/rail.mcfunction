############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ rail[shape=north_south] run setblock ~ ~ ~ rail[shape=east_west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ rail[shape=east_west] run setblock ~ ~ ~ rail[shape=north_south]
