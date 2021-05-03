############################################################
# Description: Functions to run off of every tcc block every single tick
# Creator: CreeperMagnet_
############################################################

## Block Breakers
execute if entity @s[type=armor_stand,tag=tcc.block_breaker] run function tcc:block/block_breakers/tick

## Jewelry Table
execute if entity @s[type=armor_stand,tag=tcc.jewelry_table] run function tcc:block/jewelry_table/tick

## Teapot
execute if entity @s[type=villager,tag=tcc.teapot,predicate=!tcc:teapot_valid] run function tcc:block/teapot/break

## Gobblerift
execute if entity @s[type=wandering_trader,tag=tcc.gobblerift] run function tcc:block/gobblerift/tick

## Nether Reactor
execute if entity @s[type=armor_stand,tag=tcc.nether_reactor_core] unless block ~ ~ ~ obsidian run function tcc:block/nether_reactor/break

## Positional Anchor
execute if entity @s[type=armor_stand,tag=tcc.positional_anchor] run function tcc:block/positional_anchor/tick

## Frostbloom
execute if entity @s[type=item_frame,tag=tcc.frostbloom] unless block ~ ~ ~ spruce_sapling[stage=0] run function tcc:block/frostbloom/block_change

## Phantom Item Frame
execute if entity @s[type=item_frame,tag=tcc.phantom_item_frame] run function tcc:block/phantom_item_frame/tick
