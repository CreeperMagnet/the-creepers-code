############################################################
# Functions to run off non-spectator players every single tick
############################################################

## Commands for holding items
execute if entity @s[predicate=tcc:entity/holding/anything] run function tcc:entity/player/tick/holding_item

## Item teleportation
execute if entity @s[tag=tcc.has_enabled_tangling_pearl,predicate=!tcc:entity/full_inventory] run function tcc:item/tangling_pearl/main

## Horses with Frost Trotting
execute if entity @s[tag=tcc.on_horse] run function tcc:entity/horse_frost_trotting/tick

## Echo shard renewability via shriekers
execute unless data entity @s warden_spawn_tracker{ticks_since_last_warning:0} run function tcc:block/echo_shard_renewability/main

## Score reset
execute if entity @s[gamemode=!creative] run function tcc:entity/player/score_reset
