scoreboard players set tcc.in_0 tcc.dummy 100
function tcc:worldgen/random_block

scoreboard players set tcc.temp_0 tcc.dummy 0
execute positioned ^ ^-5 ^6 run function tcc:worldgen/bootleg_jigsaw/end_city_addition/scan_air
execute positioned ^6 ^-5 ^6 run function tcc:worldgen/bootleg_jigsaw/end_city_addition/scan_air
execute positioned ^-6 ^-5 ^6 run function tcc:worldgen/bootleg_jigsaw/end_city_addition/scan_air
execute positioned ^ ^-5 ^18 run function tcc:worldgen/bootleg_jigsaw/end_city_addition/scan_air
execute positioned ^6 ^-5 ^18 run function tcc:worldgen/bootleg_jigsaw/end_city_addition/scan_air
execute positioned ^-6 ^-5 ^18 run function tcc:worldgen/bootleg_jigsaw/end_city_addition/scan_air
execute positioned ^6 ^-5 ^12 run function tcc:worldgen/bootleg_jigsaw/end_city_addition/scan_air
execute positioned ^-6 ^-5 ^12 run function tcc:worldgen/bootleg_jigsaw/end_city_addition/scan_air
execute if score tcc.out_0 tcc.dummy matches ..33 run scoreboard players set tcc.temp_0 tcc.dummy 0
execute if score tcc.temp_0 tcc.dummy matches 8 run function tcc:worldgen/bootleg_jigsaw/end_city_addition/gobblerift_section/setblock
execute unless score tcc.temp_0 tcc.dummy matches 8 run setblock ~ ~ ~ end_stone_bricks
scoreboard players reset tcc.temp_0