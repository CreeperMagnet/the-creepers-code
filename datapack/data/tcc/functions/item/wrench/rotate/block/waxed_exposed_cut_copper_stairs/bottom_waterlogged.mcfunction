############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ waxed_exposed_cut_copper_stairs[facing=north] run setblock ~ ~ ~ waxed_exposed_cut_copper_stairs[facing=east,waterlogged=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ waxed_exposed_cut_copper_stairs[facing=east] run setblock ~ ~ ~ waxed_exposed_cut_copper_stairs[facing=south,waterlogged=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ waxed_exposed_cut_copper_stairs[facing=south] run setblock ~ ~ ~ waxed_exposed_cut_copper_stairs[facing=west,waterlogged=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ waxed_exposed_cut_copper_stairs[facing=west] run setblock ~ ~ ~ waxed_exposed_cut_copper_stairs[facing=north,waterlogged=true]
