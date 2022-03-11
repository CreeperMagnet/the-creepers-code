############################################################
# Functions to run off of every tcc block every ten seconds
############################################################

## Teapot
execute if entity @s[type=wandering_trader,tag=tcc.teapot] run function tcc:block/teapot/ten_second_clock

## Hopper Prevention
execute if entity @s[type=armor_stand,tag=tcc.prevents_hoppers] run function tcc:block/hopper_updating/fill

## Snail Nest
execute if entity @s[type=armor_stand,tag=tcc.snail_nest] run function tcc:block/snail_nest/ten_second_clock
