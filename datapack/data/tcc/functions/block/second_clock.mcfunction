############################################################
# Functions to run off of every tcc block every second
############################################################

## Nether Reactor
execute if entity @s[type=item_display,tag=tcc.nether_reactor_core.on] run function tcc:block/nether_reactor/check_casing/on

## Frostbloom
execute if entity @s[type=item_display,tag=tcc.frostbloom] run function tcc:block/frostbloom/second_clock

## Geomancer pillars
execute if entity @s[type=item_display,tag=tcc.geomancer_pillar] run function tcc:block/geomancer_pillars/second_clock

## Teapot clock
execute if entity @s[type=interaction,tag=tcc.teapot,scores={tcc.dummy2=1..}] if block ~ ~ ~ #campfires[lit=true] positioned ~ ~0.75 ~ run function tcc:block/teapot/cook/second_clock

## Gobblerift
execute if entity @s[type=interaction,tag=tcc.gobblerift] run function tcc:block/gobblerift/second_clock

## Prevent Darkening
execute if entity @s[type=item_display,tag=!tcc.glow_in_the_dark] run function tcc:block/update_light/main