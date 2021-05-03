############################################################
# Description: Commands to run if a snail has a beetroot boost
# Creator: CreeperMagnet_
############################################################

scoreboard players remove @s tcc.dummy2 1
execute if entity @s[predicate=tcc:chance/one_sixtieth,predicate=tcc:chance/one_third] run loot spawn ~ ~ ~ loot tcc:items/snail_mucus
