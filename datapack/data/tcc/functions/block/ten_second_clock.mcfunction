############################################################
# Description: Functions to run off of every tcc block every second
# Creator: CreeperMagnet_
############################################################

## Teapot
execute if entity @s[type=villager,tag=tcc.teapot] run function tcc:block/teapot/ten_second_clock

## Gobblerift
execute if entity @s[type=minecraft:wandering_trader,tag=tcc.gobblerift] run function tcc:block/gobblerift/ten_second_clock

## Positional Anchor
execute if entity @s[type=armor_stand,tag=tcc.positional_anchor] run function tcc:block/positional_anchor/ten_second_clock
