############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ deepslate_tile_stairs[facing=north] run setblock ~ ~ ~ deepslate_tile_stairs[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ deepslate_tile_stairs[facing=east] run setblock ~ ~ ~ deepslate_tile_stairs[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ deepslate_tile_stairs[facing=south] run setblock ~ ~ ~ deepslate_tile_stairs[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ deepslate_tile_stairs[facing=west] run setblock ~ ~ ~ deepslate_tile_stairs[facing=north]
