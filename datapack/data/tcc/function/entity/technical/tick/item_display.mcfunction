# Functions to run off of every tcc item display every single tick

## Blocks
execute if entity @s[tag=tcc.block] positioned ~ ~-1 ~ run return run function tcc:block/tick

## Boomerangs
execute if entity @s[tag=tcc.boomerang] run function tcc:item/boomerang/tick
