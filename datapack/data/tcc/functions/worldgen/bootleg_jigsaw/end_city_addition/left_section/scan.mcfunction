scoreboard players set tcc.in_0 tcc.dummy 100
function tcc:worldgen/random_block

scoreboard players set tcc.temp_0 tcc.dummy 0
execute positioned ^2 ^-2 ^6 run function tcc:worldgen/bootleg_jigsaw/end_city_addition/scan_air
execute positioned ^-2 ^-2 ^6 run function tcc:worldgen/bootleg_jigsaw/end_city_addition/scan_air
execute positioned ^ ^-2 ^11 run function tcc:worldgen/bootleg_jigsaw/end_city_addition/scan_air
execute positioned ^7 ^-2 ^11 run function tcc:worldgen/bootleg_jigsaw/end_city_addition/scan_air
execute positioned ^-7 ^-2 ^11 run function tcc:worldgen/bootleg_jigsaw/end_city_addition/scan_air
execute positioned ^ ^-2 ^24 run function tcc:worldgen/bootleg_jigsaw/end_city_addition/scan_air
execute positioned ^7 ^-2 ^24 run function tcc:worldgen/bootleg_jigsaw/end_city_addition/scan_air
execute positioned ^-7 ^-2 ^24 run function tcc:worldgen/bootleg_jigsaw/end_city_addition/scan_air
execute positioned ^7 ^-2 ^18 run function tcc:worldgen/bootleg_jigsaw/end_city_addition/scan_air
execute positioned ^-7 ^-2 ^18 run function tcc:worldgen/bootleg_jigsaw/end_city_addition/scan_air
execute if score tcc.out_0 tcc.dummy matches ..50 run scoreboard players set tcc.temp_0 tcc.dummy 0

execute unless score tcc.temp_0 tcc.dummy matches 10 run setblock ~ ~ ~ end_stone_bricks
execute if score tcc.temp_0 tcc.dummy matches 10 run function tcc:worldgen/bootleg_jigsaw/end_city_addition/left_section/randomize
scoreboard players reset tcc.temp_0