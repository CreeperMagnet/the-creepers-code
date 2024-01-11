# Functions to run off of every tcc block every single tick

## Teapot
execute if entity @s[tag=tcc.teapot] positioned ~ ~1 ~ unless predicate tcc:block/teapot_valid run function tcc:block/teapot/break

## Gobblerift
execute if entity @s[tag=tcc.gobblerift] positioned ~ ~1 ~ run function tcc:block/gobblerift/tick

## Nether Reactor
execute if entity @s[tag=tcc.nether_reactor_core] unless block ~ ~ ~ minecraft:obsidian run function tcc:block/nether_reactor/break

## Decorated Pot
execute if entity @s[tag=tcc.decorated_pot] positioned ~ ~1 ~ run function tcc:block/decorated_pot/tick

## Soul Conductor
execute if entity @s[tag=tcc.soul_conductor] unless block ~ ~ ~ minecraft:dropper run function tcc:block/soul_conductor/break/main

## Positional Anchor
execute if entity @s[tag=tcc.positional_anchor] run function tcc:block/positional_anchor/tick

## Soul Seer
execute if entity @s[tag=tcc.soul_seer] run function tcc:block/soul_seer/tick

## Frostbloom
execute if entity @s[tag=tcc.frostbloom] run function tcc:block/frostbloom/tick

## Snail Nest
execute if entity @s[tag=tcc.snail_nest] run function tcc:block/snail_nest/tick

## Pottery Table
execute if entity @s[tag=tcc.pottery_table] run function tcc:block/pottery_table/tick/main

## Potted Plant
execute if entity @s[tag=tcc.potted_plant] positioned ~ ~1 ~ run function tcc:block/potted_plant/tick

## Phantom Item Frame
execute if entity @s[tag=tcc.phantom_item_frame] positioned ~ ~1 ~ run function tcc:block/phantom_item_frame/tick
