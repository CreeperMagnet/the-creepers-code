############################################################
# Commands to run if the player is holding an item in either of their hands.
############################################################

## Warped fungus on a stick commands
execute if entity @s[scores={tcc.used_warped_fungus_on_a_stick=1..}] run function tcc:item/warped_fungus_on_a_stick/use

## Mending Items
execute if entity @s[predicate=tcc:entity/holding/mending_item/any] positioned ~ ~0.805 ~ run function tcc:item/durability/mending/xp_orb_test/main

## Totem of Undying and void bugfix
execute if score @s tcc.health matches 0..5 run effect give @s[predicate=tcc:item/totem_void_heal] instant_health 1 0


## Compendium
execute if entity @s[tag=!tcc.compendium_ban,tag=!tcc.can_change_compendium_mode,predicate=tcc:entity/holding/compendium] run function tcc:item/compendium/toggle_unlockable/enable
