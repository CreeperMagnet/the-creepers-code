############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ end_rod[facing=north] run setblock ~ ~ ~ end_rod[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ end_rod[facing=east] run setblock ~ ~ ~ end_rod[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ end_rod[facing=south] run setblock ~ ~ ~ end_rod[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ end_rod[facing=west] run setblock ~ ~ ~ end_rod[facing=up]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ end_rod[facing=up] run setblock ~ ~ ~ end_rod[facing=down]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ end_rod[facing=down] run setblock ~ ~ ~ end_rod[facing=north]
