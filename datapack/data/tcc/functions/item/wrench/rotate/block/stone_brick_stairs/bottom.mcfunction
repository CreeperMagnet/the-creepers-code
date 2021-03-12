############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ stone_brick_stairs[facing=north] run setblock ~ ~ ~ stone_brick_stairs[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ stone_brick_stairs[facing=east] run setblock ~ ~ ~ stone_brick_stairs[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ stone_brick_stairs[facing=south] run setblock ~ ~ ~ stone_brick_stairs[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ stone_brick_stairs[facing=west] run setblock ~ ~ ~ stone_brick_stairs[facing=north]
