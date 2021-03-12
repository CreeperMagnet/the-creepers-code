
## tcc.in_0: x pos
## tcc.in_1: y pos
#> tcc.out_0: generated random number

#> tcc.temp_0: quick maths
#> tcc.temp_5: in_0 holder
#> tcc.temp_6: in_1 holder
#> tcc.temp_7: output holder

#assign placeholder
scoreboard players operation tcc.temp_5 tcc.dummy = tcc.in_0 tcc.dummy
scoreboard players operation tcc.temp_6 tcc.dummy = tcc.in_1 tcc.dummy

scoreboard players set tcc.temp_7 tcc.dummy 0

# shift tcc.in_0
function tcc:worldgen/random/xor_shift
scoreboard players operation tcc.temp_7 tcc.dummy += tcc.out_0 tcc.dummy

#shift tcc.in_1
scoreboard players operation tcc.in_0 tcc.dummy = tcc.in_1 tcc.dummy
function tcc:worldgen/random/xor_shift
scoreboard players operation tcc.temp_7 tcc.dummy *= tcc.out_0 tcc.dummy

#shift tcc.temp_0
scoreboard players operation tcc.in_0 tcc.dummy = tcc.temp_7 tcc.dummy
function tcc:worldgen/random/xor_shift
#return tcc.out_0

#reset tcc.in_0 & tcc.in_1
scoreboard players operation tcc.in_0 tcc.dummy = tcc.temp_5 tcc.dummy
scoreboard players operation tcc.in_1 tcc.dummy = tcc.temp_6 tcc.dummy
