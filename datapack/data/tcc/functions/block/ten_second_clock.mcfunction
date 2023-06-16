############################################################
# Functions to run off of every tcc block every ten seconds
############################################################

## Hopper Prevention
execute if entity @s[type=item_display,tag=tcc.prevents_hoppers] positioned ~ ~-1 ~ run function tcc:block/hopper_updating/fill

## Snail Nest
execute if entity @s[type=item_display,tag=tcc.snail_nest] run function tcc:block/snail_nest/ten_second_clock

## Kill teapot entities without their partners
execute if entity @s[tag=tcc.teapot] run function tcc:block/teapot/ten_second_clock

## Kill decorated pot passengers without vehicles
kill @s[tag=tcc.decorated_pot_passenger,predicate=!tcc:entity/in_vehicle] 

## Gobblerift
execute if entity @s[tag=tcc.gobblerift] run function tcc:block/gobblerift/ten_second_clock
