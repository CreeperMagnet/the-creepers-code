############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ cobbled_deepslate_stairs[facing=north] run setblock ~ ~ ~ cobbled_deepslate_stairs[facing=east,half=top,waterlogged=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ cobbled_deepslate_stairs[facing=east] run setblock ~ ~ ~ cobbled_deepslate_stairs[facing=south,half=top,waterlogged=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ cobbled_deepslate_stairs[facing=south] run setblock ~ ~ ~ cobbled_deepslate_stairs[facing=west,half=top,waterlogged=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ cobbled_deepslate_stairs[facing=west] run setblock ~ ~ ~ cobbled_deepslate_stairs[facing=north,half=top,waterlogged=true]
