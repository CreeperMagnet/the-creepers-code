scoreboard players set #temp_0 tcc.dummy 0
execute positioned ^ ^18 ^28 run function tcc:postgen/bootleg_jigsaw/end_city_addition/scan_air
execute positioned ^ ^18 ^16 run function tcc:postgen/bootleg_jigsaw/end_city_addition/scan_air
execute positioned ^6 ^18 ^28 run function tcc:postgen/bootleg_jigsaw/end_city_addition/scan_air
execute positioned ^6 ^18 ^22 run function tcc:postgen/bootleg_jigsaw/end_city_addition/scan_air
execute positioned ^-6 ^18 ^28 run function tcc:postgen/bootleg_jigsaw/end_city_addition/scan_air
execute positioned ^-6 ^18 ^22 run function tcc:postgen/bootleg_jigsaw/end_city_addition/scan_air
execute positioned ^6 ^18 ^16 run function tcc:postgen/bootleg_jigsaw/end_city_addition/scan_air
execute positioned ^-6 ^18 ^16 run function tcc:postgen/bootleg_jigsaw/end_city_addition/scan_air
execute if block ^2 ^12 ^ purpur_pillar if block ^ ^12 ^1 air run scoreboard players set #temp_0 tcc.dummy 0
execute if block ^2 ^20 ^ purpur_pillar if block ^ ^20 ^1 air run scoreboard players set #temp_0 tcc.dummy 0
execute if block ^-4 ^ ^-4 purpur_stairs run scoreboard players set #temp_0 tcc.dummy 0
execute if block ^4 ^ ^-4 purpur_stairs run scoreboard players set #temp_0 tcc.dummy 0
execute if score #temp_0 tcc.dummy matches 8 run function tcc:postgen/bootleg_jigsaw/end_city_addition/main_extension/setblock
execute unless score #temp_0 tcc.dummy matches 8 run fill ~ ~ ~ ~ ~1 ~ air
scoreboard players reset #temp_0 tcc.dummy