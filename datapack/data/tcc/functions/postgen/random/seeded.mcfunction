
## tcc.in_0: max output value (0-100,000,000)
## tcc.in_1: input seed
#> tcc.out_0: generated random number
#> tcc.out_1: new seed

scoreboard players operation #out_1 tcc.dummy = #in_1 tcc.dummy

#LCG
scoreboard players operation #out_1 tcc.dummy *= #world_seed tcc.dummy

scoreboard players add #out_1 tcc.dummy 12345

#output
scoreboard players operation #out_0 tcc.dummy = #out_1 tcc.dummy
scoreboard players operation #out_0 tcc.dummy /= #16 tcc.dummy
scoreboard players operation #out_0 tcc.dummy %= #in_0 tcc.dummy
execute if score #out_0 tcc.dummy matches ..-1 run scoreboard players operation #out_0 tcc.dummy *= #-1 tcc.dummy

#check for 0 range
execute if score #in_0 tcc.dummy matches 0 run scoreboard players set #out_0 tcc.dummy 0
