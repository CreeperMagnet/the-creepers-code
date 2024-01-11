# Commands to run for the boomerang tickly

execute if entity @s[scores={tcc.dummy2=50..}] run function tcc:item/boomerang/track_player/main with entity @s item.tag.tcc.macro_input
execute unless entity @s[scores={tcc.dummy2=121..}] run function tcc:item/boomerang/move
execute if entity @s[scores={tcc.dummy2=121..}] run function tcc:item/boomerang/break with storage tcc:storage root.temp.boomerang.macro_input
