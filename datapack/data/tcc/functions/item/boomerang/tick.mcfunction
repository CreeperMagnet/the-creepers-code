############################################################
# Commands to run for the boomerang tickly
############################################################

execute if entity @s[scores={tcc.dummy2=50..}] run function tcc:item/boomerang/track_player/main
execute unless entity @s[scores={tcc.dummy2=121..}] run function tcc:item/boomerang/move
execute if entity @s[scores={tcc.dummy2=121..}] run function tcc:item/boomerang/break
