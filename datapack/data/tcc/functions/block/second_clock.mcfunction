############################################################
# Functions to run off of every tcc block every second
############################################################

## Nether Reactor
execute if entity @s[type=armor_stand,tag=tcc.nether_reactor_core.on] run function tcc:block/nether_reactor/check_casing/on

## Frostbloom
execute if entity @s[type=item_frame,tag=tcc.frostbloom] run function tcc:block/frostbloom/second_clock

## Geomancer pillars
execute if entity @s[type=armor_stand,tag=tcc.geomancer_pillar] run function tcc:block/geomancer_pillars/second_clock

## Teapot clock
execute if entity @s[type=wandering_trader,tag=tcc.teapot,scores={tcc.dummy2=1..}] if block ~ ~ ~ #campfires[lit=true] positioned ~ ~1.2 ~ run function tcc:block/teapot/cook/second_clock
