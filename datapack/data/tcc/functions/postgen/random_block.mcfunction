#> tcc:postgen/random_block RUN AT A BLOCK ENTITY
## tcc.in_0: max output value (0-100,000,000)
#> tcc.out_0: generated number

#> #temp_8: in_0 holder

scoreboard players operation #temp_8 tcc.dummy = #in_0 tcc.dummy

execute store result score #in_0 tcc.dummy run data get block ~ ~ ~ x
execute store result score #in_1 tcc.dummy run data get block ~ ~ ~ z

function tcc:postgen/random/get_seed


scoreboard players operation #in_0 tcc.dummy = #temp_8 tcc.dummy
scoreboard players operation #in_1 tcc.dummy = #out_0 tcc.dummy

function tcc:postgen/random/seeded


scoreboard players reset #temp_0 tcc.dummy
scoreboard players reset #temp_1 tcc.dummy
scoreboard players reset #temp_2 tcc.dummy
scoreboard players reset #temp_3 tcc.dummy
scoreboard players reset #temp_4 tcc.dummy
scoreboard players reset #temp_5 tcc.dummy
scoreboard players reset #temp_6 tcc.dummy
scoreboard players reset #temp_7 tcc.dummy
scoreboard players reset #temp_8 tcc.dummy