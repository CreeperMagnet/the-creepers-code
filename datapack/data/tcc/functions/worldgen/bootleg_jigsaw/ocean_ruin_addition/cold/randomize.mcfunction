scoreboard players set tcc.in_0 tcc.dummy 100
function tcc:worldgen/random_block

scoreboard players set tcc.temp_1 tcc.dummy 0
execute if score tcc.out_0 tcc.dummy matches ..50 run scoreboard players set tcc.temp_1 tcc.dummy 1
execute if score tcc.temp_1 tcc.dummy matches 0 run function tcc:worldgen/bootleg_jigsaw/ocean_ruin_addition/cold/setblock_treasure
execute if score tcc.temp_1 tcc.dummy matches 1 run function tcc:worldgen/bootleg_jigsaw/ocean_ruin_addition/cold/setblock_trident
scoreboard players reset tcc.temp_1
setblock ~ ~1 ~ air
fill ~3 ~3 ~3 ~-3 ~-3 ~-3 water replace observer
