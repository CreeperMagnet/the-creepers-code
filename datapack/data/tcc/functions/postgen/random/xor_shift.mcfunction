
## tcc.in_0: number to shift
#> tcc.in_1: input to bit_shift
#> tcc.out_0: shifted number

#> #temp_0: quick maths
#> #temp_3: in_0 holder
#> #temp_4: in_1 holder

#assign placeholder
scoreboard players operation #temp_3 tcc.dummy = #in_0 tcc.dummy
scoreboard players operation #temp_4 tcc.dummy = #in_1 tcc.dummy

# tcc.in_0 << 13
scoreboard players set #temp_0 tcc.dummy 8192
scoreboard players operation #in_1 tcc.dummy = #in_0 tcc.dummy
scoreboard players operation #in_1 tcc.dummy *= #temp_0 tcc.dummy
function tcc:postgen/random/xor_bitwise
scoreboard players operation #in_0 tcc.dummy = #out_0 tcc.dummy

# tcc.in_0 >> 17
scoreboard players set #temp_0 tcc.dummy 131072
scoreboard players operation #in_1 tcc.dummy = #in_0 tcc.dummy
scoreboard players operation #in_1 tcc.dummy /= #temp_0 tcc.dummy
function tcc:postgen/random/xor_bitwise
scoreboard players operation #in_0 tcc.dummy = #out_0 tcc.dummy

# tcc.in_0 << 5
scoreboard players set #temp_0 tcc.dummy 32
scoreboard players operation #in_1 tcc.dummy = #in_0 tcc.dummy
scoreboard players operation #in_1 tcc.dummy *= #temp_0 tcc.dummy
function tcc:postgen/random/xor_bitwise

#return tcc.out_0

#reset tcc.in_0 & tcc.in_1
scoreboard players operation #in_0 tcc.dummy = #temp_3 tcc.dummy
scoreboard players operation #in_1 tcc.dummy = #temp_4 tcc.dummy
