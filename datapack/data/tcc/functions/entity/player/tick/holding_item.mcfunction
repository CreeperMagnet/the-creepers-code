############################################################
# Commands to run if the player is holding an item in either of their hands.
############################################################

## Carrot on stick commands
execute if entity @s[scores={tcc.carrotstick=1..}] run function tcc:item/carrot_on_a_stick

## Mending Items
execute if entity @s[predicate=tcc:entity/holding/mending_item/any] positioned ~ ~0.805 ~ run function tcc:item/durability/mending/xp_orb_test/main

## Totem of Undying and void bugfix
effect give @s[predicate=tcc:item/totem_void_heal] instant_health 1 0

## Ender Pearl Rings
execute if entity @s[predicate=tcc:entity/holding/ring/ender_pearl] run function tcc:item/ring/ender_pearl/main

## Amethyst Rings
execute if entity @s[predicate=tcc:entity/holding/ring/amethyst,scores={tcc.drop=1..}] run function tcc:item/ring/amethyst/find_item
