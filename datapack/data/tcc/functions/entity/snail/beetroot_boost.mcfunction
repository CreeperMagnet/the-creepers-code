############################################################
# Commands to run if a snail has a beetroot boost
############################################################

scoreboard players remove @s tcc.dummy2 1
tag @s[scores={tcc.dummy2=0}] remove tcc.fed_beetroot
tag @s[scores={tcc.dummy2=0}] remove tcc.fed_heartbeet
execute if entity @s[predicate=tcc:chance/one_sixtieth,predicate=tcc:chance/one_fifth,tag=!tcc.fed_heartbeet] run loot spawn ~ ~ ~ loot tcc:items/snail_mucus
execute if entity @s[predicate=tcc:chance/one_sixtieth,predicate=tcc:chance/one_half,tag=tcc.fed_heartbeet] run loot spawn ~ ~ ~ loot tcc:items/snail_mucus
