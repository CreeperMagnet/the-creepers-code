############################################################
# Description: Commands to run if a snail has a beetroot boost
# Creator: CreeperMagnet_
############################################################

scoreboard players remove @s tcc.dummy2 1
tag @s[scores={tcc.dummy2=0}] remove tcc.fed_beetroot
execute if entity @s[predicate=tcc:chance/one_sixtieth,predicate=tcc:chance/one_fifth] run loot spawn ~ ~ ~ loot tcc:items/snail_mucus
