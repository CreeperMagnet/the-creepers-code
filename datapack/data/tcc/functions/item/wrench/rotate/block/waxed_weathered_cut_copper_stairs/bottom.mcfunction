############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ waxed_weathered_cut_copper_stairs[facing=north] run setblock ~ ~ ~ waxed_weathered_cut_copper_stairs[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ waxed_weathered_cut_copper_stairs[facing=east] run setblock ~ ~ ~ waxed_weathered_cut_copper_stairs[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ waxed_weathered_cut_copper_stairs[facing=south] run setblock ~ ~ ~ waxed_weathered_cut_copper_stairs[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ waxed_weathered_cut_copper_stairs[facing=west] run setblock ~ ~ ~ waxed_weathered_cut_copper_stairs[facing=north]
