# Commands to run for the boomerang tickly

execute if entity @s[scores={tcc.dummy2=50..}] run function tcc:item/boomerang/track_player/main with entity @s item.components."minecraft:custom_data".tcc.macro_input
execute unless entity @s[scores={tcc.dummy2=121..}] run function tcc:item/boomerang/move
execute if entity @s[scores={tcc.dummy2=121..}] run function tcc:item/boomerang/pop_into_item with storage tcc:temp root.boomerang.macro_input
