############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ andesite_stairs[facing=north] run setblock ~ ~ ~ andesite_stairs[facing=east,half=top]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ andesite_stairs[facing=east] run setblock ~ ~ ~ andesite_stairs[facing=south,half=top]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ andesite_stairs[facing=south] run setblock ~ ~ ~ andesite_stairs[facing=west,half=top]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ andesite_stairs[facing=west] run setblock ~ ~ ~ andesite_stairs[facing=north,half=top]
