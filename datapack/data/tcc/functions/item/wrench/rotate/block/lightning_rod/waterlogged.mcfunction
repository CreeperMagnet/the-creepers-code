############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ lightning_rod[facing=north] run setblock ~ ~ ~ lightning_rod[facing=east,waterlogged=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ lightning_rod[facing=east] run setblock ~ ~ ~ lightning_rod[facing=south,waterlogged=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ lightning_rod[facing=south] run setblock ~ ~ ~ lightning_rod[facing=west,waterlogged=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ lightning_rod[facing=west] run setblock ~ ~ ~ lightning_rod[facing=up,waterlogged=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ lightning_rod[facing=up] run setblock ~ ~ ~ lightning_rod[facing=down,waterlogged=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ lightning_rod[facing=down] run setblock ~ ~ ~ lightning_rod[facing=north,waterlogged=true]
