
## tcc.in_0: x pos
## tcc.in_1: y pos
#> tcc.out_0: generated random number

#> #temp_0: quick maths
#> #temp_5: in_0 holder
#> #temp_6: in_1 holder
#> #temp_7: output holder

#assign placeholder
scoreboard players operation #temp_5 tcc.dummy = #in_0 tcc.dummy
scoreboard players operation #temp_6 tcc.dummy = #in_1 tcc.dummy

scoreboard players set #temp_7 tcc.dummy 0

# shift tcc.in_0
function tcc:postgen/random/xor_shift
scoreboard players operation #temp_7 tcc.dummy += #out_0 tcc.dummy

#shift tcc.in_1
scoreboard players operation #in_0 tcc.dummy = #in_1 tcc.dummy
function tcc:postgen/random/xor_shift
scoreboard players operation #temp_7 tcc.dummy *= #out_0 tcc.dummy

#shift #temp_0
scoreboard players operation #in_0 tcc.dummy = #temp_7 tcc.dummy
function tcc:postgen/random/xor_shift
#return tcc.out_0

#reset tcc.in_0 & tcc.in_1
scoreboard players operation #in_0 tcc.dummy = #temp_5 tcc.dummy
scoreboard players operation #in_1 tcc.dummy = #temp_6 tcc.dummy
