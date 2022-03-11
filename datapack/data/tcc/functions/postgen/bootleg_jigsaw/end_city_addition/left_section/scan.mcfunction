scoreboard players set #temp_0 tcc.dummy 0
execute positioned ^2 ^-2 ^6 run function tcc:postgen/bootleg_jigsaw/end_city_addition/scan_air
execute positioned ^-2 ^-2 ^6 run function tcc:postgen/bootleg_jigsaw/end_city_addition/scan_air
execute positioned ^ ^-2 ^11 run function tcc:postgen/bootleg_jigsaw/end_city_addition/scan_air
execute positioned ^7 ^-2 ^11 run function tcc:postgen/bootleg_jigsaw/end_city_addition/scan_air
execute positioned ^-7 ^-2 ^11 run function tcc:postgen/bootleg_jigsaw/end_city_addition/scan_air
execute positioned ^ ^-2 ^24 run function tcc:postgen/bootleg_jigsaw/end_city_addition/scan_air
execute positioned ^7 ^-2 ^24 run function tcc:postgen/bootleg_jigsaw/end_city_addition/scan_air
execute positioned ^-7 ^-2 ^24 run function tcc:postgen/bootleg_jigsaw/end_city_addition/scan_air
execute positioned ^7 ^-2 ^18 run function tcc:postgen/bootleg_jigsaw/end_city_addition/scan_air
execute positioned ^-7 ^-2 ^18 run function tcc:postgen/bootleg_jigsaw/end_city_addition/scan_air

execute unless score #temp_0 tcc.dummy matches 10 run setblock ~ ~ ~ end_stone_bricks
execute if score #temp_0 tcc.dummy matches 10 run function tcc:postgen/bootleg_jigsaw/end_city_addition/left_section/randomize
scoreboard players reset #temp_0 tcc.dummy
