############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ oxidized_cut_copper_stairs[facing=north] run setblock ~ ~ ~ oxidized_cut_copper_stairs[facing=east,half=top]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ oxidized_cut_copper_stairs[facing=east] run setblock ~ ~ ~ oxidized_cut_copper_stairs[facing=south,half=top]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ oxidized_cut_copper_stairs[facing=south] run setblock ~ ~ ~ oxidized_cut_copper_stairs[facing=west,half=top]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ oxidized_cut_copper_stairs[facing=west] run setblock ~ ~ ~ oxidized_cut_copper_stairs[facing=north,half=top]
