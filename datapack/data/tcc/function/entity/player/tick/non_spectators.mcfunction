# Functions to run off non-spectator players every single tick

## Commands for holding items
execute if predicate tcc:entity_properties/slots/weapon/anything run function tcc:entity/player/tick/holding_item

## Deselecting a compendium
execute if entity @s[tag=!tcc.compendium_ban,tag=tcc.can_change_compendium_mode,predicate=!tcc:entity_properties/slots/weapon/compendium] run trigger tccc.internal_trigger set -1
execute if entity @s[tag=!tcc.compendium_ban,tag=tcc.can_change_compendium_mode] unless score @s tccc.internal_trigger matches 0 run function tcc:item/compendium/toggle_unlockable/toggle

## Item teleportation
execute if entity @s[tag=tcc.has_enabled_tangling_pearl] as @e[type=#tcc:tangling_pearl_teleported,distance=..7,tag=!smithed.entity,tag=!tcc.recovery_compass_item,tag=!tcc.persistent_cursed_crown,tag=!tcc.tangling_pearl_item.teleported] at @s unless data entity @s Thrower run function tcc:item/tangling_pearl/as_item

## Extend turtle helmet water breathing
execute anchored eyes positioned ^ ^ ^ if predicate tcc:multiple_condition_types/turtle_helmet_activation_conditions run effect give @s minecraft:water_breathing 31 0 true

## Reset scores
scoreboard players reset @s tcc.sneaking
scoreboard players reset @s tcc.used_warped_fungus_on_a_stick
