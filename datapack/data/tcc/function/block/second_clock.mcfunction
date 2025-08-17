# Functions to run off of every tcc block every second

## Nether Reactor
execute if entity @s[tag=tcc.nether_reactor_core] if loaded ~1 ~ ~1 if loaded ~1 ~ ~-1 if loaded ~-1 ~ ~1 if loaded ~-1 ~ ~-1 run function tcc:block/nether_reactor_core/second_clock

## Frostbloom
execute if entity @s[tag=tcc.frostbloom] run function tcc:block/frostbloom/second_clock

## Potted Frostbloom
execute if entity @s[tag=tcc.potted_frostbloom] run particle minecraft:falling_dust{block_state:"minecraft:snow"} ~ ~1 ~ 0.5 0.5 0.5 0 10 normal

## Geomancer pillars
execute if entity @s[tag=tcc.geomancer_pillar] run function tcc:block/geomancer_pillars/second_clock

## Soul Conductor
execute if entity @s[tag=tcc.soul_conductor] positioned ~ ~-1 ~ run function tcc:block/soul_conductor/second_clock

## Echoing hourglass
execute if entity @s[tag=tcc.echoing_hourglass] run function tcc:block/echoing_hourglass/second_clock

## Gobblerift (runs on passenger interaction, which holds the proper entity `Tags`)
execute if entity @s[tag=tcc.gobblerift] on passengers run function tcc:block/gobblerift/second_clock

## Prevent Darkening
execute if entity @s[tag=!tcc.glow_in_the_dark] run function tcc:block/update_light/main