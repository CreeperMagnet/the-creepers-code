# Commands to run if the player is holding an item in either of their hands.

## Warped fungus on a stick commands
execute if entity @s[scores={tcc.used_warped_fungus_on_a_stick=1..}] run function tcc:item/warped_fungus_on_a_stick/use

## Totem of Undying and void bugfix
execute if score @s tcc.health matches 0..5 if items entity @s weapon.* minecraft:totem_of_undying run effect give @s[predicate=tcc:location_check/in_void,predicate=tcc:location_check/below_-50] minecraft:instant_health 1 0

## Compendium
execute if entity @s[tag=!tcc.compendium_ban,tag=!tcc.can_change_compendium_mode,predicate=tcc:entity_properties/slots/weapon/compendium] run function tcc:item/compendium/toggle_unlockable/enable
