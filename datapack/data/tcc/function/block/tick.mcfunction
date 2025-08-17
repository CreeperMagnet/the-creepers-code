# Functions to run off of every tcc block every single tick

## Decorated Pot
execute if entity @s[tag=tcc.decorated_pot] positioned ~ ~1 ~ run return run function tcc:block/decorated_pot/tick

## Potted Plant
execute if entity @s[tag=tcc.potted_plant] positioned ~ ~1 ~ run return run function tcc:block/potted_plant/tick

## Custom Flower Pots
execute if entity @s[tag=tcc.flower_pot] positioned ~ ~1 ~ unless block ~ ~ ~ #minecraft:flower_pots run return run function tcc:block/flower_pot/break/main

## Pottery Table
execute if entity @s[tag=tcc.pottery_table] run return run function tcc:block/pottery_table/tick/main

## Phantom Item Frame
execute if entity @s[tag=tcc.phantom_item_frame] positioned ~ ~1 ~ run return run function tcc:block/phantom_item_frame/tick

## Soul Conductor
execute if entity @s[tag=tcc.soul_conductor] unless block ~ ~ ~ minecraft:dropper run return run function tcc:block/soul_conductor/break/main

## Creaking Connector
execute if entity @s[tag=tcc.creaking_connector] run return run function tcc:block/creaking_connector/tick

## Soul Seer
execute if entity @s[tag=tcc.soul_seer] run return run function tcc:block/soul_seer/tick

## Frostbloom
execute if entity @s[tag=tcc.frostbloom] run return run function tcc:block/frostbloom/tick

## Echoing Hourglass
execute if entity @s[tag=tcc.echoing_hourglass] unless block ~ ~1 ~ #tcc:air_or_water run return run function tcc:block/echoing_hourglass/break

## Snail Nest
execute if entity @s[tag=tcc.snail_nest] run return run function tcc:block/snail_nest/tick

## Gobblerift
execute if entity @s[tag=tcc.gobblerift] positioned ~ ~1 ~ run return run function tcc:block/gobblerift/tick

## Nether Reactor
execute if entity @s[tag=tcc.nether_reactor_core] unless block ~ ~ ~ minecraft:obsidian run return run function tcc:block/nether_reactor_core/break

## Sprouter Egg
execute if entity @s[tag=tcc.sprouter_egg] positioned ~ ~1 ~ run function tcc:block/sprouter_egg/tick