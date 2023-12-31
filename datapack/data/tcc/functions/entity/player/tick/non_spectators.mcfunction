############################################################
# Functions to run off non-spectator players every single tick
############################################################

## Commands for holding items
execute if entity @s[predicate=tcc:entity/holding/anything] run function tcc:entity/player/tick/holding_item

## Deselecting a compendium
execute if entity @s[tag=!tcc.compendium_ban,tag=tcc.can_change_compendium_mode,predicate=!tcc:entity/holding/compendium] run trigger tccc.internal_trigger set -1
execute if entity @s[tag=!tcc.compendium_ban,tag=tcc.can_change_compendium_mode] unless score @s tccc.internal_trigger matches 0 run function tcc:item/compendium/toggle_unlockable/toggle

## Item teleportation
execute if entity @s[tag=tcc.has_enabled_tangling_pearl] unless predicate tcc:entity/full_inventory as @e[type=#tcc:tangling_pearl_teleported,distance=..7,tag=!smithed.entity,tag=!tcc.recovery_compass_item] at @s unless data entity @s Thrower run function tcc:item/tangling_pearl/as_item

## Horses with Frost Trotting
execute if entity @s[tag=tcc.on_horse] run function tcc:entity/horse_frost_trotting/tick

## Echo shard renewability via shriekers
execute unless data entity @s warden_spawn_tracker{ticks_since_last_warning:0} run function tcc:block/echo_shard_renewability/main

## Extend turtle helmet water breathing
execute anchored eyes positioned ^ ^ ^ if predicate tcc:entity/wearing/turtle_helmet_on_land run effect give @s water_breathing 31 0 true

## Sneaking score
scoreboard players reset @s tcc.sneaking
