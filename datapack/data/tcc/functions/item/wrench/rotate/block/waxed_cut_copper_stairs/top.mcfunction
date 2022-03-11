############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ waxed_cut_copper_stairs[facing=north] run setblock ~ ~ ~ waxed_cut_copper_stairs[facing=east,half=top]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ waxed_cut_copper_stairs[facing=east] run setblock ~ ~ ~ waxed_cut_copper_stairs[facing=south,half=top]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ waxed_cut_copper_stairs[facing=south] run setblock ~ ~ ~ waxed_cut_copper_stairs[facing=west,half=top]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ waxed_cut_copper_stairs[facing=west] run setblock ~ ~ ~ waxed_cut_copper_stairs[facing=north,half=top]
