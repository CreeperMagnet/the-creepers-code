## tcc.in_0: number to shift
#> tcc.in_1: input to bit_shift
#> tcc.out_0: shifted number

#> #temp_0: in_0 holder
#> #temp_1: in_1 holder
#> #temp_2: multiplier

#assign initial values
scoreboard players operation #temp_0 tcc.dummy = #in_0 tcc.dummy
scoreboard players operation #temp_1 tcc.dummy = #in_1 tcc.dummy

scoreboard players reset #temp_2 tcc.dummy
scoreboard players set #2 tcc.dummy 2

#setup 
scoreboard players operation #out_0 tcc.dummy = #temp_0 tcc.dummy
scoreboard players operation #out_0 tcc.dummy += #temp_1 tcc.dummy

# AND calculation:
execute if score #temp_0 tcc.dummy matches ..-1 if score #temp_1 tcc.dummy matches ..-1 run scoreboard players set #temp_2 tcc.dummy -2147483648

scoreboard players operation #temp_0 tcc.dummy *= #2 tcc.dummy
scoreboard players operation #temp_1 tcc.dummy *= #2 tcc.dummy
execute if score #temp_0 tcc.dummy matches ..-1 if score #temp_1 tcc.dummy matches ..-1 run scoreboard players add #temp_2 tcc.dummy 1073741824

scoreboard players operation #temp_0 tcc.dummy *= #2 tcc.dummy
scoreboard players operation #temp_1 tcc.dummy *= #2 tcc.dummy
execute if score #temp_0 tcc.dummy matches ..-1 if score #temp_1 tcc.dummy matches ..-1 run scoreboard players add #temp_2 tcc.dummy 536870912

scoreboard players operation #temp_0 tcc.dummy *= #2 tcc.dummy
scoreboard players operation #temp_1 tcc.dummy *= #2 tcc.dummy
execute if score #temp_0 tcc.dummy matches ..-1 if score #temp_1 tcc.dummy matches ..-1 run scoreboard players add #temp_2 tcc.dummy 268435456

scoreboard players operation #temp_0 tcc.dummy *= #2 tcc.dummy
scoreboard players operation #temp_1 tcc.dummy *= #2 tcc.dummy
execute if score #temp_0 tcc.dummy matches ..-1 if score #temp_1 tcc.dummy matches ..-1 run scoreboard players add #temp_2 tcc.dummy 134217728

scoreboard players operation #temp_0 tcc.dummy *= #2 tcc.dummy
scoreboard players operation #temp_1 tcc.dummy *= #2 tcc.dummy
execute if score #temp_0 tcc.dummy matches ..-1 if score #temp_1 tcc.dummy matches ..-1 run scoreboard players add #temp_2 tcc.dummy 67108864

scoreboard players operation #temp_0 tcc.dummy *= #2 tcc.dummy
scoreboard players operation #temp_1 tcc.dummy *= #2 tcc.dummy
execute if score #temp_0 tcc.dummy matches ..-1 if score #temp_1 tcc.dummy matches ..-1 run scoreboard players add #temp_2 tcc.dummy 33554432

scoreboard players operation #temp_0 tcc.dummy *= #2 tcc.dummy
scoreboard players operation #temp_1 tcc.dummy *= #2 tcc.dummy
execute if score #temp_0 tcc.dummy matches ..-1 if score #temp_1 tcc.dummy matches ..-1 run scoreboard players add #temp_2 tcc.dummy 16777216

scoreboard players operation #temp_0 tcc.dummy *= #2 tcc.dummy
scoreboard players operation #temp_1 tcc.dummy *= #2 tcc.dummy
execute if score #temp_0 tcc.dummy matches ..-1 if score #temp_1 tcc.dummy matches ..-1 run scoreboard players add #temp_2 tcc.dummy 8388608

scoreboard players operation #temp_0 tcc.dummy *= #2 tcc.dummy
scoreboard players operation #temp_1 tcc.dummy *= #2 tcc.dummy
execute if score #temp_0 tcc.dummy matches ..-1 if score #temp_1 tcc.dummy matches ..-1 run scoreboard players add #temp_2 tcc.dummy 4194304

scoreboard players operation #temp_0 tcc.dummy *= #2 tcc.dummy
scoreboard players operation #temp_1 tcc.dummy *= #2 tcc.dummy
execute if score #temp_0 tcc.dummy matches ..-1 if score #temp_1 tcc.dummy matches ..-1 run scoreboard players add #temp_2 tcc.dummy 2097152

scoreboard players operation #temp_0 tcc.dummy *= #2 tcc.dummy
scoreboard players operation #temp_1 tcc.dummy *= #2 tcc.dummy
execute if score #temp_0 tcc.dummy matches ..-1 if score #temp_1 tcc.dummy matches ..-1 run scoreboard players add #temp_2 tcc.dummy 1048576

scoreboard players operation #temp_0 tcc.dummy *= #2 tcc.dummy
scoreboard players operation #temp_1 tcc.dummy *= #2 tcc.dummy
execute if score #temp_0 tcc.dummy matches ..-1 if score #temp_1 tcc.dummy matches ..-1 run scoreboard players add #temp_2 tcc.dummy 524288

scoreboard players operation #temp_0 tcc.dummy *= #2 tcc.dummy
scoreboard players operation #temp_1 tcc.dummy *= #2 tcc.dummy
execute if score #temp_0 tcc.dummy matches ..-1 if score #temp_1 tcc.dummy matches ..-1 run scoreboard players add #temp_2 tcc.dummy 262144

scoreboard players operation #temp_0 tcc.dummy *= #2 tcc.dummy
scoreboard players operation #temp_1 tcc.dummy *= #2 tcc.dummy
execute if score #temp_0 tcc.dummy matches ..-1 if score #temp_1 tcc.dummy matches ..-1 run scoreboard players add #temp_2 tcc.dummy 131072

scoreboard players operation #temp_0 tcc.dummy *= #2 tcc.dummy
scoreboard players operation #temp_1 tcc.dummy *= #2 tcc.dummy
execute if score #temp_0 tcc.dummy matches ..-1 if score #temp_1 tcc.dummy matches ..-1 run scoreboard players add #temp_2 tcc.dummy 65536

scoreboard players operation #temp_0 tcc.dummy *= #2 tcc.dummy
scoreboard players operation #temp_1 tcc.dummy *= #2 tcc.dummy
execute if score #temp_0 tcc.dummy matches ..-1 if score #temp_1 tcc.dummy matches ..-1 run scoreboard players add #temp_2 tcc.dummy 32768

scoreboard players operation #temp_0 tcc.dummy *= #2 tcc.dummy
scoreboard players operation #temp_1 tcc.dummy *= #2 tcc.dummy
execute if score #temp_0 tcc.dummy matches ..-1 if score #temp_1 tcc.dummy matches ..-1 run scoreboard players add #temp_2 tcc.dummy 16384

scoreboard players operation #temp_0 tcc.dummy *= #2 tcc.dummy
scoreboard players operation #temp_1 tcc.dummy *= #2 tcc.dummy
execute if score #temp_0 tcc.dummy matches ..-1 if score #temp_1 tcc.dummy matches ..-1 run scoreboard players add #temp_2 tcc.dummy 8192

scoreboard players operation #temp_0 tcc.dummy *= #2 tcc.dummy
scoreboard players operation #temp_1 tcc.dummy *= #2 tcc.dummy
execute if score #temp_0 tcc.dummy matches ..-1 if score #temp_1 tcc.dummy matches ..-1 run scoreboard players add #temp_2 tcc.dummy 4096

scoreboard players operation #temp_0 tcc.dummy *= #2 tcc.dummy
scoreboard players operation #temp_1 tcc.dummy *= #2 tcc.dummy
execute if score #temp_0 tcc.dummy matches ..-1 if score #temp_1 tcc.dummy matches ..-1 run scoreboard players add #temp_2 tcc.dummy 2048

scoreboard players operation #temp_0 tcc.dummy *= #2 tcc.dummy
scoreboard players operation #temp_1 tcc.dummy *= #2 tcc.dummy
execute if score #temp_0 tcc.dummy matches ..-1 if score #temp_1 tcc.dummy matches ..-1 run scoreboard players add #temp_2 tcc.dummy 1024

scoreboard players operation #temp_0 tcc.dummy *= #2 tcc.dummy
scoreboard players operation #temp_1 tcc.dummy *= #2 tcc.dummy
execute if score #temp_0 tcc.dummy matches ..-1 if score #temp_1 tcc.dummy matches ..-1 run scoreboard players add #temp_2 tcc.dummy 512

scoreboard players operation #temp_0 tcc.dummy *= #2 tcc.dummy
scoreboard players operation #temp_1 tcc.dummy *= #2 tcc.dummy
execute if score #temp_0 tcc.dummy matches ..-1 if score #temp_1 tcc.dummy matches ..-1 run scoreboard players add #temp_2 tcc.dummy 256

scoreboard players operation #temp_0 tcc.dummy *= #2 tcc.dummy
scoreboard players operation #temp_1 tcc.dummy *= #2 tcc.dummy
execute if score #temp_0 tcc.dummy matches ..-1 if score #temp_1 tcc.dummy matches ..-1 run scoreboard players add #temp_2 tcc.dummy 128

scoreboard players operation #temp_0 tcc.dummy *= #2 tcc.dummy
scoreboard players operation #temp_1 tcc.dummy *= #2 tcc.dummy
execute if score #temp_0 tcc.dummy matches ..-1 if score #temp_1 tcc.dummy matches ..-1 run scoreboard players add #temp_2 tcc.dummy 64

scoreboard players operation #temp_0 tcc.dummy *= #2 tcc.dummy
scoreboard players operation #temp_1 tcc.dummy *= #2 tcc.dummy
execute if score #temp_0 tcc.dummy matches ..-1 if score #temp_1 tcc.dummy matches ..-1 run scoreboard players add #temp_2 tcc.dummy 32

scoreboard players operation #temp_0 tcc.dummy *= #2 tcc.dummy
scoreboard players operation #temp_1 tcc.dummy *= #2 tcc.dummy
execute if score #temp_0 tcc.dummy matches ..-1 if score #temp_1 tcc.dummy matches ..-1 run scoreboard players add #temp_2 tcc.dummy 16

scoreboard players operation #temp_0 tcc.dummy *= #2 tcc.dummy
scoreboard players operation #temp_1 tcc.dummy *= #2 tcc.dummy
execute if score #temp_0 tcc.dummy matches ..-1 if score #temp_1 tcc.dummy matches ..-1 run scoreboard players add #temp_2 tcc.dummy 8

scoreboard players operation #temp_0 tcc.dummy *= #2 tcc.dummy
scoreboard players operation #temp_1 tcc.dummy *= #2 tcc.dummy
execute if score #temp_0 tcc.dummy matches ..-1 if score #temp_1 tcc.dummy matches ..-1 run scoreboard players add #temp_2 tcc.dummy 4

scoreboard players operation #temp_0 tcc.dummy *= #2 tcc.dummy
scoreboard players operation #temp_1 tcc.dummy *= #2 tcc.dummy
execute if score #temp_0 tcc.dummy matches ..-1 if score #temp_1 tcc.dummy matches ..-1 run scoreboard players add #temp_2 tcc.dummy 2

scoreboard players operation #temp_0 tcc.dummy *= #2 tcc.dummy
scoreboard players operation #temp_1 tcc.dummy *= #2 tcc.dummy
execute if score #temp_0 tcc.dummy matches ..-1 if score #temp_1 tcc.dummy matches ..-1 run scoreboard players add #temp_2 tcc.dummy 1
# (End of AND calculation)

scoreboard players operation #out_0 tcc.dummy -= #temp_2 tcc.dummy
scoreboard players operation #out_0 tcc.dummy -= #temp_2 tcc.dummy
