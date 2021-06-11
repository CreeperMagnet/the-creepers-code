#> tcc:worldgen/random RUN AS AN ENTITY
## tcc.in_0: max output value (0-100,000,000)
#> tcc.out_0: generated number

#> tcc.temp_8: in_0 holder

scoreboard players operation tcc.temp_8 tcc.dummy = tcc.in_0 tcc.dummy

execute store result score tcc.in_0 tcc.dummy run data get entity @s Pos[0]
execute store result score tcc.in_1 tcc.dummy run data get entity @s Pos[2]

function tcc:worldgen/random/get_seed


scoreboard players operation tcc.in_0 tcc.dummy = tcc.temp_8 tcc.dummy
scoreboard players operation tcc.in_1 tcc.dummy = tcc.out_0 tcc.dummy

function tcc:worldgen/random/seeded


scoreboard players reset tcc.temp_0 tcc.dummy
scoreboard players reset tcc.temp_1 tcc.dummy
scoreboard players reset tcc.temp_2 tcc.dummy
scoreboard players reset tcc.temp_3 tcc.dummy
scoreboard players reset tcc.temp_4 tcc.dummy
scoreboard players reset tcc.temp_5 tcc.dummy
scoreboard players reset tcc.temp_6 tcc.dummy
scoreboard players reset tcc.temp_7 tcc.dummy
scoreboard players reset tcc.temp_8 tcc.dummy