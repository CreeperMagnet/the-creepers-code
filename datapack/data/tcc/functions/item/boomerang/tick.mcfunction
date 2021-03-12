############################################################
# Description: Commands to run for the boomerang tickly
# Creator: CreeperMagnet_
############################################################
scoreboard players add @s tcc.dummy2 0
execute if entity @s[scores={tcc.dummy2=50..}] run function tcc:item/boomerang/track
execute if entity @s[scores={tcc.dummy2=0..120}] run function tcc:item/boomerang/move
execute if entity @s[scores={tcc.dummy2=121..}] run function tcc:item/boomerang/break
