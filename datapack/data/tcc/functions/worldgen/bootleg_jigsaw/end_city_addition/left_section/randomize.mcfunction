scoreboard players set tcc.in_0 tcc.dummy 100
function tcc:worldgen/random_block

scoreboard players set tcc.temp_1 tcc.dummy 0
execute if score tcc.out_0 tcc.dummy matches ..50 run scoreboard players set tcc.temp_1 tcc.dummy 1
execute if score tcc.temp_1 tcc.dummy matches 0 run function tcc:worldgen/bootleg_jigsaw/end_city_addition/left_section/setblock_normal
execute if score tcc.temp_1 tcc.dummy matches 1 run function tcc:worldgen/bootleg_jigsaw/end_city_addition/left_section/setblock_weird
scoreboard players reset tcc.temp_1