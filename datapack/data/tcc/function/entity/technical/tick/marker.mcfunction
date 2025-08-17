# Functions to run off of every tcc marker every single tick

## Brewing Stuff
execute if entity @s[tag=tcc.brewing_stand] run return run function tcc:block/brewing_stand/brewing/tick

## Waxed Note Blocks
execute if entity @s[tag=tcc.waxed_note_block] unless function tcc:block/piston_push/check run kill