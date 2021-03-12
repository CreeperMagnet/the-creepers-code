############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ sandstone_stairs[facing=north] run setblock ~ ~ ~ sandstone_stairs[facing=east,half=top]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ sandstone_stairs[facing=east] run setblock ~ ~ ~ sandstone_stairs[facing=south,half=top]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ sandstone_stairs[facing=south] run setblock ~ ~ ~ sandstone_stairs[facing=west,half=top]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ sandstone_stairs[facing=west] run setblock ~ ~ ~ sandstone_stairs[facing=north,half=top]
