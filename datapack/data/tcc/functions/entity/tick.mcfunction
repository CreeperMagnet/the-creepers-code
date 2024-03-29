# Functions to run off of every tcc entity every single tick

## Trader Entities
execute if entity @s[type=minecraft:wandering_trader,tag=tcc.trader_entity] run function tcc:entity/trader_entity/tick

## Archaeologist
execute if entity @s[type=minecraft:villager,tag=tcc.archaeologist] run function tcc:entity/archaeologist/tick

## Boomerangs
execute if entity @s[type=minecraft:item_display,tag=tcc.boomerang] run function tcc:item/boomerang/tick

## Iceologer Ice
execute if entity @s[type=minecraft:falling_block,tag=tcc.falling_ice] run function tcc:entity/iceologer/ice/tick

## Blocks
execute if entity @s[type=minecraft:item_display,tag=tcc.block] positioned ~ ~-1 ~ run function tcc:block/tick

## Waxed Note Blocks
execute if entity @s[type=minecraft:marker,tag=tcc.waxed_note_block] unless function tcc:block/piston_push/check run kill

## Brewing Stuff
execute if entity @s[type=minecraft:marker,tag=tcc.brewing_stand] run function tcc:block/brewing_stand/brewing/tick
