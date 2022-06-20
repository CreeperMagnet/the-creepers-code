############################################################
# Functions to run off of every tcc block every single tick
############################################################

## Jewelry Table
execute if entity @s[type=armor_stand,tag=tcc.jewelry_table] run function tcc:block/jewelry_table/tick/main

## Teapot
execute if entity @s[type=wandering_trader,tag=tcc.teapot,predicate=!tcc:block/teapot_valid] run function tcc:block/teapot/break

## Gobblerift
execute if entity @s[type=wandering_trader,tag=tcc.gobblerift,predicate=!tcc:block/gobblerift_valid] run function tcc:block/gobblerift/break

## Nether Reactor
execute if entity @s[type=armor_stand,tag=tcc.nether_reactor_core] unless block ~ ~ ~ obsidian run function tcc:block/nether_reactor/break

## Soul Conductor
execute if entity @s[type=armor_stand,tag=tcc.soul_conductor] unless block ~ ~ ~ dropper run function tcc:block/soul_conductor/break

## Positional Anchor
execute if entity @s[type=armor_stand,tag=tcc.positional_anchor] run function tcc:block/positional_anchor/tick

## Soul Seer
execute if entity @s[type=armor_stand,tag=tcc.soul_seer] run function tcc:block/soul_seer/tick

## Frostbloom
execute if entity @s[type=item_frame,tag=tcc.frostbloom] unless block ~ ~ ~ spruce_sapling[stage=0] run function tcc:block/frostbloom/block_change

## Phantom Item Frame
execute if entity @s[type=item_frame,tag=tcc.phantom_item_frame] run function tcc:block/phantom_item_frame/tick

## Snail Nest
execute if entity @s[type=armor_stand,tag=tcc.snail_nest] unless block ~ ~ ~ clay run function tcc:block/snail_nest/break
