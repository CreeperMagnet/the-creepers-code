
## tcc.in_0: number to shift
#> tcc.in_1: input to bit_shift
#> tcc.out_0: shifted number

#> tcc.temp_0: quick maths
#> tcc.temp_3: in_0 holder
#> tcc.temp_4: in_1 holder

#assign placeholder
scoreboard players operation tcc.temp_3 tcc.dummy = tcc.in_0 tcc.dummy
scoreboard players operation tcc.temp_4 tcc.dummy = tcc.in_1 tcc.dummy

# tcc.in_0 << 13
scoreboard players set tcc.temp_0 tcc.dummy 8192
scoreboard players operation tcc.in_1 tcc.dummy = tcc.in_0 tcc.dummy
scoreboard players operation tcc.in_1 tcc.dummy *= tcc.temp_0 tcc.dummy
function tcc:worldgen/random/xor_bitwise
scoreboard players operation tcc.in_0 tcc.dummy = tcc.out_0 tcc.dummy

# tcc.in_0 >> 17
scoreboard players set tcc.temp_0 tcc.dummy 131072
scoreboard players operation tcc.in_1 tcc.dummy = tcc.in_0 tcc.dummy
scoreboard players operation tcc.in_1 tcc.dummy /= tcc.temp_0 tcc.dummy
function tcc:worldgen/random/xor_bitwise
scoreboard players operation tcc.in_0 tcc.dummy = tcc.out_0 tcc.dummy

# tcc.in_0 << 5
scoreboard players set tcc.temp_0 tcc.dummy 32
scoreboard players operation tcc.in_1 tcc.dummy = tcc.in_0 tcc.dummy
scoreboard players operation tcc.in_1 tcc.dummy *= tcc.temp_0 tcc.dummy
function tcc:worldgen/random/xor_bitwise

#return tcc.out_0

#reset tcc.in_0 & tcc.in_1
scoreboard players operation tcc.in_0 tcc.dummy = tcc.temp_3 tcc.dummy
scoreboard players operation tcc.in_1 tcc.dummy = tcc.temp_4 tcc.dummy
