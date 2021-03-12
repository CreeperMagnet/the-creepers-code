
## tcc.in_0: max output value (0-100,000,000)
## tcc.in_1: input seed
#> tcc.out_0: generated random number
#> tcc.out_1: new seed

scoreboard players operation tcc.out_1 tcc.dummy = tcc.in_1 tcc.dummy

#LCG
scoreboard players operation tcc.out_1 tcc.dummy *= tcc.world_seed tcc.dummy

scoreboard players add tcc.out_1 tcc.dummy 12345

#output
scoreboard players operation tcc.out_0 tcc.dummy = tcc.out_1 tcc.dummy
scoreboard players operation tcc.out_0 tcc.dummy /= tcc.const.16 tcc.dummy
scoreboard players operation tcc.out_0 tcc.dummy %= tcc.in_0 tcc.dummy
execute if score tcc.out_0 tcc.dummy matches ..-1 run scoreboard players operation tcc.out_0 tcc.dummy *= tcc.const.-1 tcc.dummy

#check for 0 range
execute if score tcc.in_0 tcc.dummy matches 0 run scoreboard players set tcc.out_0 tcc.dummy 0
