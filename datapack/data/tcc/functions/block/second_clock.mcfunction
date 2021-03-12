############################################################
# Description: Functions to run off of every tcc block every second
# Creator: CreeperMagnet_
############################################################

## Nether Reactor
execute if entity @s[type=armor_stand,tag=tcc.nether_reactor_core.on] run function tcc:block/nether_reactor/check_casing/on

## Frostbloom
execute if entity @s[type=item_frame,tag=tcc.frostbloom] run function tcc:block/frostbloom/second_clock

## Geomancer pillars
execute if entity @s[type=item_frame,tag=tcc.geomancer_pillar] run function tcc:block/geomancer_pillars/second_clock

## Gobblerift Second Clock
execute if entity @s[type=minecraft:wandering_trader,tag=tcc.gobblerift] run function tcc:block/gobblerift/second_clock
