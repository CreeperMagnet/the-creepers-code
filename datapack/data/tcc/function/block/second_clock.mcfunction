# Functions to run off of every tcc block every second

## Nether Reactor
execute if entity @s[type=minecraft:item_display,tag=tcc.nether_reactor_core] if loaded ~1 ~ ~1 if loaded ~1 ~ ~-1 if loaded ~-1 ~ ~1 if loaded ~-1 ~ ~-1 run function tcc:block/nether_reactor/second_clock

## Frostbloom
execute if entity @s[type=minecraft:item_display,tag=tcc.frostbloom] run function tcc:block/frostbloom/second_clock

## Potted Frostbloom
execute if entity @s[type=minecraft:item_display,tag=tcc.potted_frostbloom] run particle minecraft:falling_dust{block_state:"minecraft:snow"} ~ ~1 ~ 0.5 0.5 0.5 0 10 normal

## Geomancer pillars
execute if entity @s[type=minecraft:item_display,tag=tcc.geomancer_pillar] run function tcc:block/geomancer_pillars/second_clock

## Soul Conductor
execute if entity @s[type=minecraft:item_display,tag=tcc.soul_conductor] positioned ~ ~-1 ~ run function tcc:block/soul_conductor/second_clock

## Teapot clock
execute if entity @s[type=minecraft:interaction,tag=tcc.teapot,scores={tcc.dummy2=1..}] if block ~ ~ ~ #campfires[lit=true] positioned ~ ~0.75 ~ run function tcc:block/teapot/cook/second_clock

## Echoing hourglass
execute if entity @s[type=minecraft:item_display,tag=tcc.echoing_hourglass] run function tcc:block/echoing_hourglass/second_clock

## Gobblerift
execute if entity @s[type=minecraft:interaction,tag=tcc.gobblerift] run function tcc:block/gobblerift/second_clock

## Prevent Darkening
execute if entity @s[type=minecraft:item_display,tag=!tcc.glow_in_the_dark] run function tcc:block/update_light/main