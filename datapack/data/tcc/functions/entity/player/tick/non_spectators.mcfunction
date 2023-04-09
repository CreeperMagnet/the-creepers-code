############################################################
# Functions to run off non-spectator players every single tick
############################################################

## Commands for holding items
execute if entity @s[predicate=tcc:entity/holding/anything] run function tcc:entity/player/tick/holding_item

## Item teleportation
execute if entity @s[tag=tcc.has_enabled_tangling_pearl] unless predicate tcc:entity/full_inventory as @e[type=item,distance=..7,tag=!smithed.entity] at @s unless data entity @s Thrower run function tcc:item/tangling_pearl/as_item

## Horses with Frost Trotting
execute if entity @s[tag=tcc.on_horse] run function tcc:entity/horse_frost_trotting/tick

## Echo shard renewability via shriekers
execute unless data entity @s warden_spawn_tracker{ticks_since_last_warning:0} run function tcc:block/echo_shard_renewability/main

## Score reset
scoreboard players reset @s[gamemode=!creative] tcc.crafted_item
