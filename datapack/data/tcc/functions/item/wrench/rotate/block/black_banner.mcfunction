############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ black_banner[rotation=0] run setblock ~ ~ ~ black_banner[rotation=1]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ black_banner[rotation=1] run setblock ~ ~ ~ black_banner[rotation=2]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ black_banner[rotation=2] run setblock ~ ~ ~ black_banner[rotation=3]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ black_banner[rotation=3] run setblock ~ ~ ~ black_banner[rotation=4]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ black_banner[rotation=4] run setblock ~ ~ ~ black_banner[rotation=5]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ black_banner[rotation=5] run setblock ~ ~ ~ black_banner[rotation=6]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ black_banner[rotation=6] run setblock ~ ~ ~ black_banner[rotation=7]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ black_banner[rotation=7] run setblock ~ ~ ~ black_banner[rotation=8]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ black_banner[rotation=8] run setblock ~ ~ ~ black_banner[rotation=9]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ black_banner[rotation=9] run setblock ~ ~ ~ black_banner[rotation=10]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ black_banner[rotation=10] run setblock ~ ~ ~ black_banner[rotation=11]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ black_banner[rotation=11] run setblock ~ ~ ~ black_banner[rotation=12]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ black_banner[rotation=12] run setblock ~ ~ ~ black_banner[rotation=13]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ black_banner[rotation=13] run setblock ~ ~ ~ black_banner[rotation=14]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ black_banner[rotation=14] run setblock ~ ~ ~ black_banner[rotation=15]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ black_banner[rotation=15] run setblock ~ ~ ~ black_banner[rotation=0]
