############################################################
# Description: Commands to run if the player is holding an item in either of their hands.
# Creator: CreeperMagnet_
############################################################

## Carrot on stick commands
execute if entity @s[scores={tcc.carrotstick=1..}] run function tcc:item/carrot_on_a_stick

## Mending Items
execute if entity @s[predicate=tcc:holding/mending_item] run function tcc:item/item_modification/durability/mend_items/xp_orb_test

## Obsidian Scythes
execute if entity @s[predicate=tcc:holding/obsidian_scythe] run function tcc:item/obsidian_scythe/tick

## Totem of Undying and void bugfix
effect give @s[predicate=tcc:totem_void_heal] instant_health 1 0

## Ender Pearl Gemstones
execute if entity @s[predicate=tcc:holding/ender_pearl_ring/any] run function tcc:item/ender_pearl_gemstone
