############################################################
# Functions to run off non-spectator players every single tick
############################################################

## Commands for holding items
execute if entity @s[predicate=tcc:entity/holding/anything] run function tcc:entity/player/tick/holding_item

## Horses with Frost Trotting
execute if entity @s[tag=tcc.on_horse] run function tcc:entity/horse_frost_trotting/tick

## Score reset
execute if entity @s[gamemode=!creative] run function tcc:entity/player/score_reset
