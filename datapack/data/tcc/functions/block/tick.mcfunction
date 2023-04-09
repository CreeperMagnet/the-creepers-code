############################################################
# Functions to run off of every tcc block every single tick
############################################################

## Teapot
execute if entity @s[tag=tcc.teapot] positioned ~ ~1 ~ unless predicate tcc:block/teapot_valid run function tcc:block/teapot/break/main

## Gobblerift
execute if entity @s[tag=tcc.gobblerift] positioned ~ ~1 ~ run function tcc:block/gobblerift/tick

## Nether Reactor
execute if entity @s[tag=tcc.nether_reactor_core] unless block ~ ~ ~ obsidian run function tcc:block/nether_reactor/break

## Soul Conductor
execute if entity @s[tag=tcc.soul_conductor] unless block ~ ~ ~ dropper run function tcc:block/soul_conductor/break/main

## Positional Anchor
execute if entity @s[tag=tcc.positional_anchor] run function tcc:block/positional_anchor/tick

## Soul Seer
execute if entity @s[tag=tcc.soul_seer] run function tcc:block/soul_seer/tick

## Frostbloom
execute if entity @s[tag=tcc.frostbloom] run function tcc:block/frostbloom/tick

## Snail Nest
execute if entity @s[tag=tcc.snail_nest] unless block ~ ~ ~ clay run function tcc:block/snail_nest/break
